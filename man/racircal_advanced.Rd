% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/racircal_advanced.R
\name{racircal_advanced}
\alias{racircal_advanced}
\title{Corrects rapid A/Ci response (RACiR) data from leaves using empty chamber data.}
\usage{
racircal_advanced(
  data,
  caldata,
  mincut,
  maxcut,
  title,
  digits,
  varnames = list(A = "A", Ca = "Ca", CO2_r = "CO2_r", E = "E", gtc = "gtc")
)
}
\arguments{
\item{data}{Data frame with the RACiR response data}

\item{caldata}{Data frame with the calibration data}

\item{mincut}{Minimum cutoff value for reference CO2 (CO2_r). Used to cut
out the data from the initial chamber mixing. Default value is set to the
minimum COR_r value.}

\item{maxcut}{Maximum cutoff value for reference CO2 (CO2_r). Used to cut
out the data from the end of the response. Not needed in all cases. Default
value is set to the maximum COR_r value.}

\item{title}{Title of output graph - useful for batch RACiR corrections.}

\item{digits}{Specifies rounding for groups. Defaults to -2 (100s). Effectively
uses 100 ppm intervals (e.g. data matching >50 ppm to 150 ppm would be assigned
to an interval centered around 100 ppm for reference CO2).}

\item{varnames}{Variable names - this allows for the use of this code with
other machines and setups where variable names may differ.}
}
\value{
racircal_advanced racircalcheck allows visual checking of RACiR
calibration data
}
\description{
\code{racircal_advanced} Interval correction for RACiR data.
}
\examples{
\donttest{
#Read in data
data <- read_6800(system.file("extdata", "poplar_2", package = "racir"))
caldata <- read_6800(system.file("extdata", "cal", package = "racir"))
#Correct data
data_corrected <- racircal_advanced(data = data, caldata = caldata,
                                    mincut = 350, maxcut = 780,
                                    digits = -2, title = "Test")
}

}
