library(cranlog)
# Create a folder for downloading the log files of pacakge download
package_log_folder <- 'package_log_folder/'
if (!dir.exists(package_log_folder)) {
    dir.create(package_log_folder)
}
# Set the start_date and end_date
start_date <- '2012-10-01'
end_date <- '2012-10-31'
# Download the log files of pacakge download between the start_date and end_date
# It may cost a lot time. Be careful!
package_log_folder <-
    download_RStudio_CRAN_data(START = start_date,
                               END = end_date, log_folder = package_log_folder)
