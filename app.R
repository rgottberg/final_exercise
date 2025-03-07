# install libraries
install.packages("ggplot2")
install.packages("dplyr")
install.packages("tidyr")
install.packages("lubridate")

#load libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(lubridate)

#explore dataset
data()

#choose dataset
data(airquality)
head(airquality)
summary(airquality)
str(airquality)


#create dataframe
df <- data.frame(airquality)

#identify missing values
colSums(is.na(airquality))

#replace NA values in multiple columns with zero
df2 <- df |>
    mutate(across(where(is.numeric), ~replace_na(., 0)))

#create new column
df3 <- df2 |>
    mutate(date = paste(Month,Day,"2025",sep='-')) |>
    mutate(date = lubridate::mdy(date))



