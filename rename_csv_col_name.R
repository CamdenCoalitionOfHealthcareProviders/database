# Rename columns

# Set library
library(readr)
library(dplyr)

# Read in csv files
cap_list <- read_csv("cap_list.csv")
pra <- read_csv("pra.csv")
spec_ops <- read_csv("spec_ops.csv")
utilization <- read_csv("utilization.csv")
client_track <- read_csv("client_track.csv")

# Cap List
cap_list_rename <- rename(cap_list,
                   'hie_id' = `Patient ID HIE`,
                   'subscriber_id' = `SUBSCRIBER_ID`,
                   'unique_id' = `UniqueID`,
                   'practice' = `PRACTICE`,
                   'dob' = `DOB`,
                   'medicaid_no' = `MEDICAID_NO`,
                   'medicare_no' = `MEDICARE_NO`,
                   'memb_first_name' = `MEMB_FIRST_NAME`,
                   'memb_last_name' = `MEMB_LAST_NAME`,
                   'memb_add_1' = `MEMB_ADDRESS_LINE_1`,
                   'memb_add_2' = `MEMB_ADDRESS_LINE_2`,
                   'memb_city' = `MEMB_CITY`,
                   'memb_st' = `MEMB_STATE`,
                   'memb_zip' = `MEMB_ZIP`,
                   'memb_add' = `MEMB_ADDRESS`,
                   'ssn' = `SOCIAL_SEC_NO`,
                   'gender' = `GENDER`,
                   'memb_eth' = `MEMB_ETHNICITY`,
                   'memb_lang' = `MEMB_LANGUAGE`,
                   'home_phone' = `HOME_PHONE_NUMBER`,
                   'bus_phone' = `BUS_PHONE_NUMBER`,
                   'curr_pcp_id' = `CURR_PCP_ID`,
                   'curr_pcp_full_name' = `CURR_PCP_FULL_NAME`,
                   'phone_number' = `PHONE_NUMBER`,
                   'curr_pcp_address_line_1' = `CURR_PCP_ADDRESS_LINE_1`,
                   'curr_pcp_address_line_2' = `CURR_PCP_ADDRESS_LINE_2`,
                   'curr_pcp_city' = `CURR_PCP_CITY`,
                   'curr_pcp_st' = `CURR_PCP_STATE`,
                   'curr_pcp_zip' = `CURR_PCP_ZIP`,
                   'pcp_add' = `PCP_ADDRESS`,
                   'vend_id' = `VENDOR_ID`,
                   'vend_full_name' = `VEND_FULL_NAME`,
                   'irs_tax_id' = `IRS_TAX_ID`,
                   'memb_dim_id' = `MEMB_DIM_ID`,
                   'future_risk_costs' = `Future_Risk_Costs`,
                   'future_costs' = `Future_Costs`,
                   'prior_total_costs_annual' = `Prior_Total_Costs_Annualized`,
                   'prior_rx_costs_annual' = `Prior_Rx_Costs_Annualized`,
                   'future_rx_costs' = `Future_Rx_Costs`,
                   'memb_months' = `Member_Months`,
                   'memb_months_total' = `Total_Mem_Months`,
                   'last_cap_date' = `LastCapitationDate`,
                   'prim_risk_factor' = `Primary_Risk_Factor`,
                   'prev_cap_date ' = `Previous Capitation Date`,
                   'create_date' = `ArchiveCreatedDate`,
                   'high_risk_cohort' = `PAYER`,
                   'payer' = `Source`,
                   'source' = `HighRiskCohort`,
                   'xover_prog' = `Cross Over Program`,
                   'xover_prog_other' = `Cross Over Program Other`,
                   'span_speaking' = `SpanishSpeaking`,
                   'homeless' = `Currently Homeless`,
                   'notes_archive' = `AllnotesArchive`)

write_csv(cap_list_rename, path = "cap_list.csv")