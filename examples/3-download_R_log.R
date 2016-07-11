library(cranlog)
# Create a folder for downloading the log files of R download
R_log_folder <- 'R_log_folder/'
if (!dir.exists(R_log_folder)) {
    dir.create(R_log_folder)
}
# Set the start_date and end_date
start_date <- '2012-10-01'
end_date <- '2012-10-31'
# Download the log files of R download between the start_date and end_date
# It may cost a lot time. Be careful!
R_log_folder <-
    download_RStudio_CRAN_data_r(START = start_date,
                                 END = end_date, log_folder = R_log_folder)
