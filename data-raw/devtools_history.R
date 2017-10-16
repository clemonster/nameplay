devtools::use_data_raw()

devtools::use_package("utils")
devtools::use_package("assertthat")
devtools::use_package("readxl")
devtools::use_package("prenoms")
devtools::use_package("dplyr")
devtools::use_package("ggplot2")

mydata <- prenoms
devtools::use_data(mydata)
