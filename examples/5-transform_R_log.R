library(cranlog)
library(data.table)
library(dplyr)
library(feather)

# the folder with R log data
R_log_folder <- 'R_log_folder/'
# read the csv data into R
R_log_data <- read_RStudio_CRAN_data(R_log_folder)
# transform the data to data.table and remove the NA data
R_log_data <- data.table(R_log_data)[, list(date, country)] %>%
    na.omit()

# group by with date and country, and summarize
R_log_data <- R_log_data[, num:=.N, by=list(date, country)] %>%
    distinct()
# export the data as feather
write_feather(R_log_data, "data/R_log_data.feather")


