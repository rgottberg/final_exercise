# install libraries
install.packages("ggplot2")
install.packages("dplyr")
install.packages("tidyr")

#load libraries
library(ggplot2)
library(dplyr)
library(tidyr)

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

# Replace NA values in multiple columns with zero
df2 <- df |>
    mutate(across(where(is.numeric), ~replace_na(., 0)))






