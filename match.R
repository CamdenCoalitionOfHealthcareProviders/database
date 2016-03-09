# Data Integrity Test
# Keeps rows on table where foreign key column matches the primary key column in another table

# To use matchr function:
  # Select the two data frames to compare
    # df1 is the data frame with the PRIMARY KEY
    # df2 is the data frame with the FOREIGN KEY
    # Data frames must already be in your global environment in R
  # Also call the column to you're comparing. The column name MUST be in quotes.
  # df2_match 
    # The data frame of df2 where the column you're comparing matches
    # df2_match drops the rows where the foreign key in df2 does not match the primary key in df1
    # df2_no_match are the unmatched rows in df2
  # For now, manually export df2_match
  # Examples 
    # matchr(cap_list, pra, 'subscriber_id')
    # matchr(pra, client_track, 'pra_id')

# Constraints by Table
  # cap_list -- subscriber_id (primary)
  # pra -- pra_id (primary), subscriber_id (foreign - cap_list)
  # spec_ops -- spec_ops_id (primary), subscriber_id (foreign - cap_list)
  # utilization -- admission_id (primary), subscriber_id (foreign - cap_list)
  # client_track -- admission_id (foreign - utilization), spec_ops_id (foreign - spec_ops), pra_id (foreign - pra)

# Match: 
  # cap_list/pra
  # cap_list/spec_ops
  # cap_list/utilization
  # pra/client_track
  # utilization/client_track
  # spec_ops/client_track

# Test data frames
# df1 <- data.frame(df1_id = sample(1:15, 10), df1_x = c(1:10))
# df2 <- data.frame(df2_x = c(1:10), df1_id = sample(1:15, 10))

##################################

# Set working directories
setwd('Y:/database')

# Set library
library(readr)

# Read in csv files
cap_list <- read_csv("cap_list.csv")
pra <- read_csv("pra.csv")
spec_ops <- read_csv("spec_ops.csv")
utilization <- read_csv("utilization.csv")
client_track <- read_csv("client_track.csv")

#matchr function
matchr <- function(df1, df2, col){
  library(dplyr)
  df2_match <<- semi_join(df2, df1, by = col)
  df2_no_match <<- anti_join(df2, df1, by = col)
}
