% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RStudio_CRAN_data.R
\name{read_RStudio_CRAN_data_r}
\alias{read_RStudio_CRAN_data_r}
\title{Reads RStudio CRAN mirror data files from a folder(not package data but R data)}
\usage{
read_RStudio_CRAN_data_r(log_folder = tempdir(), use_data_table = TRUE,
  packages, ...)
}
\arguments{
\item{log_folder}{the folder which contains the RStudio CRAN log files that were downloaded to. Default is the temporary folder picked by \link{tempdir}.}

\item{use_data_table}{default is TRUE. A switch for wether or not to use the data.table package
in order to merge the log files using rbindlist. This function is MUCH faster then the alternative.}

\item{packages}{a character vector containing the names of packages for which information is extracted.
If not specified, all packages are included, but this can cause out-of-memory problems if
there are many log files.}

\item{...}{not in use.}
}
\value{
Returns the combined data file.
}

