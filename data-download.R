library(tidyverse)

url <- xml2::read_html("https://www.england.nhs.uk/statistics/statistical-work-areas/hospital-activity/monthly-hospital-activity/mar-data/")
links <- url %>%
  rvest::html_nodes('a') %>%
  rvest::html_attr('href')
links <- links[grep('MAR_Prov', links)]
links <- links[-1]

for (link in links) {
  output <- paste0('./inputs/',sapply(strsplit(link, '/'), '[', c(11)))
  download.file(link, output)
}