# racir

[![Build Status](https://travis-ci.com/jstinzi/racir.svg?branch=master)](https://travis-ci.com/jstinzi/racir)

[![DOI](https://zenodo.org/badge/149156152.svg)](https://zenodo.org/badge/latestdoi/149156152)

The goal of racir is to provide fast and easy analysis of rapid A/Ci response
(RACiR TM) data obtained using the LI-COR 6800 portable photosynthesis machine
(LI-COR Biosciences, Lincoln, NB). 

RACiR is a trademark of LI-COR Biosciences, and used with permission.

Please report bugs or suggest features to Dr. Joseph Ronald Stinziano at
josephstinziano@gmail.com.

##Contents
*read_6800() reads in a tab-delimited LI-COR 6800 file.
*racircalcheck() allows the user to run QAQC on the calibration RACiR data.
*racircal() calibrates one RACiR leaf data frame based on a calibration data
    frame.
*racircalbatch() calibrates multiple RACiR leaf data frames based on a single
    calibration data frame.
    
##Notes & Help
For use on rapid A/Ci response data from other instruments, simply modify the
varnames variable. Please contact Dr. Joseph R. Stinziano for more information.

## Installation

To install the development version, use the following commands. Windows users
must have Rtools installed.

library(devtools)
install_github("jstinzi/racir")
