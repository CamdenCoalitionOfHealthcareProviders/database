library(readr)
library(dplyr)

# Remove duplicate Admission IDs from TrackVia in the Utilizations table
# Remove blank subscriber_id

# Read in data
util <- read.csv("utilization.csv")

# Get duplicates
util$dup <- duplicated(util$admission_id) | duplicated(util$admission_id, fromLast = TRUE)

# Subset duplicates
util_dupes <- subset(util, util$dup == "TRUE")

# Selects rows where inp6mo are NA so they can be removed
util_dupes_remove <- subset(util_dupes, complete.cases(util_dupes[,11]) != "TRUE")

# Remove util_dupes_remove from util
util_csv <- anti_join(util, util_dupes_remove)

# Remove null subscriber ID
sub_id <- subset(util, util$subscriber_id == " ")
util_csv <- anti_join(util_csv, sub_id)

# Remove util$dup column
util_csv$dup <- NULL

# Write CSV
write.csv(util_csv, "utilization.csv", row.names = F, na = "")
