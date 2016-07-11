library(cranlog)
library(data.table)
library(dplyr)
library(feather)

# the folder with package log data
package_log_folder <- 'package_log_folder/'
# read the csv data into R
package_log_data <- read_RStudio_CRAN_data(package_log_folder)
# transform the data to data.table and remove the NA data
package_log_data <- data.table(package_log_data)[, list(date, package)] %>%
    na.omit()

# group by with date and package, and summarize
package_log_data <- package_log_data[, num:=.N, by=list(date, package)] %>%
    distinct()
# export the data as feather
write_feather(package_log_data, "data/package_log_data.feather")


