library(tidyverse)

cleaner <- function(dataframe) {
  ## Replace the column names, lowercase and change spaces to underscores.
  colnames(dataframe) <- gsub("\\(|\\)|-", '', colnames(dataframe))
  colnames(dataframe) <- gsub(' ', '_', tolower(colnames(dataframe)))
  
  ## Date
  end_year_months <- c('JANUARY', 'FEBRUARY', 'MARCH')
  
  if (dataframe$period %in% end_year_months) {
    dataframe$year <- sapply(strsplit(dataframe$year, '-'), '[', c(2))
    dataframe$year <- paste0('20',dataframe$year)
  } else {
    dataframe$year <- sapply(strsplit(dataframe$year, '-'), '[', c(1))
  }
  
  dataframe$period <- as.Date(paste(dataframe$year, dataframe$period, '01', sep = '-'), format = '%Y-%B-%d')
  dataframe <- dataframe[,-1]
  dataframe <- plyr::rename(dataframe, c('period'='period_date'))
  
  dataframe <- aggregate(dataframe[,sapply(dataframe, is.numeric)], by=list(dataframe$period_date,dataframe$org_code, dataframe$org_name), sum)
  
  dataframe <- plyr::rename(dataframe, c('Group.1'='period_date', 'Group.2'='provider_org_code','Group.3'='provider_org_name'))
  return(dataframe)
}

files <- list.files('./inputs/')

datalist <- list()
for (i in 1:length(files)){
  df <- readxl::read_excel(paste0('./inputs/',files[i]),skip = 13)[-1:-2,]
  datalist[[i]] <- df
}

hosp_act <- dplyr::bind_rows(datalist)

hosp_act <- cleaner(hosp_act)

readr::write_csv(hosp_act, './outputs/hospital_activity.csv')