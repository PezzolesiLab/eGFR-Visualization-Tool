library(tidyverse)
#####
#This script is used to select the columns from Scott's original master file that are actually used in the R Shiny app.
#Data tables created using the formater script will only have these columns.

setwd("/Users/devorahstucki/Downloads/scripts/eGFR-Visualization-Tool")

master.file <- read_tsv("egfr_table_files/slope_cohort_summary_right_censored_vitals_labs_meds_insulin.tsv") 

master.file %>% 
  select(dist_id, sex, ethn, age_first_egfr, first_egfr, first_ckd_stage, age_last_egfr, last_egfr, last_ckd_stage, n_egfr, followup_yrs, corrected_slope, corrected_r2, obsv_esrd_fu_yrs, icd_esrd_fu_yrs, icd_dialysis_fu_yrs, icd_kidney_tx_fu_yrs, uncorrected_slope)

write.table(master.file, file = "masterfile.tsv", sep = "\t", row.names = FALSE)