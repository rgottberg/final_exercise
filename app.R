# install libraries
install.packages("ggplot2")
install.packages("dplyr")

#load libraries
library(ggplot2)
library(dplyr)

#explore dataset
data()

#choose dataset
data(airquality)
head(airquality)
summary(airquality)
str(airquality)
