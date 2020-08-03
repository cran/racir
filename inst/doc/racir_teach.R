## -----------------------------------------------------------------------------
library(racir)

## -----------------------------------------------------------------------------
data <- read_6800(system.file("extdata", "cal", package = "racir"))

## ----fig.height = 4, fig.width = 6--------------------------------------------
#Read in the file
data <- read_6800(system.file("extdata", "cal", package = "racir"))
#Run calibration check
racircalcheck(data = data)

## ----fig.height = 4, fig.width = 6--------------------------------------------
#Read in the file
data <- read_6800(system.file("extdata", "cal", package = "racir"))
#Run calibration check
racircalcheck(data = data,
              mincut = 350,
              maxcut = 780)
#If using the interval option, use the following function. See below
#for more detailed description
racircalcheck_advanced(data = data,
              mincut = 350,
              maxcut = 780)

## ----fig.height = 4, fig.width = 6--------------------------------------------
data <- read_6800(system.file("extdata", "poplar_2", package = "racir"))
caldata <- read_6800(system.file("extdata", "cal", package = "racir"))

data_corrected <- racircal(data = data, caldata = caldata,
                           mincut = 350, maxcut = 780)

## ----fig.height = 4, fig.width = 6--------------------------------------------
data <- read_6800(system.file("extdata", "poplar_2", package = "racir"))
caldata <- read_6800(system.file("extdata", "cal", package = "racir"))

data_corrected <- racircal_advanced(data = data, caldata = caldata,
                                    mincut = 350, maxcut = 780,
                                    digits = -2)

## ----fig.height = 4, fig.width = 6--------------------------------------------
#Create a list of files
files <- c(system.file("extdata", "poplar_1", package = "racir"),
          system.file("extdata", "poplar_2", package = "racir"))
data <- vector("list", length(files))
for(i in seq_along(files)){
  data[[i]] <- read_6800(files[i])
  names(data)[i] <- files[i]
}

caldata <- read_6800(system.file("extdata", "cal", package = "racir"))

#Batch calibration with normal algorithm
output <- racircalbatch(caldata = caldata, data = data,
         mincut = 350, maxcut = 780, title = files)

#Batch calibration with advanced algorithm
output <- racircalbatch_advanced(caldata = caldata, data = data,
         mincut = 350, maxcut = 780, title = files)

#To compile outputs from list to data frame:
output <- do.call("rbind", output)

