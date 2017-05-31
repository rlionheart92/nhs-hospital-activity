# NHS England Hospital Activity Data

This repository contains a number of R scripts for downloading, munging and exploring the monthly provider NHS England Hospital Activity Data, available at the [NHS England Website](https://www.england.nhs.uk/statistics/statistical-work-areas/hospital-activity/).

All R scripts are the work of Richard Betteridge, and are available through a MIT License.

All data remains property of NHS England, available as Open Data.

## Data Dictionary

More detailed information can be found through the most recent [statistical press note](https://www.england.nhs.uk/statistics/wp-content/uploads/sites/2/2013/04/MAR-March-17-SPN-54854.pdf).

|**Column**|**Description**|
| --- | --- |
|period_date| Date in YYYY-MM-DD format, the days are arbitrarily chosen for the purpose of analysis.|
|provider_org_code|Code of the provider.|
|provider_org_name|Name of the provider.|
|elective_ga_ordinary_admissions_ffces|Total of ordinary admissions in general and acute specialties.|
|elective_ga_daycase_admissions_ffces|Total of day case admissions in general and acute specialties.|
|elective_ga_total_admissions_ffces|Total of both ordinary and day case admissions in general and acute specialties.|
|elective_ga_planned_ordinary_admissions_ffces|Total planned ordinary admissions in general and acute specialties.|
|elective_ga_planned_daycase_admissions_ffces|Total planned day case admissions in general and acute specialties.|
|elective_ga_planned_total_admissions_ffces|Total planned ordinary and day case admissions in general and acute specialties.|
|elective_ga_admissions_ffces_nhs_treatment_centres_tcs|Total admissions in general and acute specialties in NHS Treatment centres.
|total_nonelective_ga_admissions_ffces|Total non-elective admissions in general and acute specialties.|
|gp_referrals_made_all_specialties|Total number of GP referrals made in all specialties, within that period.|
|gp_referrals_seen_all_specialties|Total number of GP referrals seen in all specialties, within that period.|
|gp_referrals_made_ga|Total number of GP referrals made in general and acute specialties, within that period.|
|gp_referrals_seen_ga|Total number of GP referrals seen in general and acute specialties, within that period.|
|other_referrals_made_ga|Total number of all other referrals made to general and acute specialties, within that period.|
|all_1st_outpatient_attendances_ga|Total number of first outpatient attendance in general and acute specialties, seen by a consultant|
