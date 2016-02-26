# Data Integrity Test 
# Match each TrackVia table by foreign key

# Constraints by Table
# cap_list -- subscriber_id (primary)
# pra -- pra_id (primary), subscriber_id (foreign - cap_list)
# spec_ops -- spec_ops_id (primary), subscriber_id (foreign - cap_list)
# utilization -- admission_id (primary), subscriber_id (foreign - cap_list)
# client_track -- admission_id (foreign - utilization), spec_ops_id (foreign - spec_ops), pra_id (foreign - pra)


# read in csv files


# Match: 
# cap_list/pra
# cap_list/spec_ops
# cap_list/pra
# client_track/pra
# client_track/utilization
# client_track/spec_ops

# Function to match keys
  # Take two data frames (dfs are already read into R)
  # Select primary key column from df1 and foreign key column from df2
  # Match the two columns
  # Select rows in df2 where foreign key does not match df1 primary key
  # Flag these df2 rows. Remove them from df2?


function(df1, df2, df1primarykey, df2foreignkey){
  library(dplyr)
  
  x <- select(df1, df1primarykey)
  y <- select(df2, df2foreignkey)
}