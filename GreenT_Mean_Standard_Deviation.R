setwd("~/Aliza/Project/GreenTaxi")
library(readr)
GreenTaxi_2017_02 <- read_csv("GreenTaxi_2017-02.csv")
View(GreenTaxi_2017_02)

GreenT <- GreenTaxi_2017_02
GreenT
GreenT$passenger_count
GreenT$trip_distance
GreenT$fare_amount
GreenT$total_amount

mean(GreenT$passenger_count)
sd(GreenT$passenger_count)
mean(GreenT$trip_distance)
sd(GreenT$trip_distance)
mean(GreenT$fare_amount)
sd(GreenT$fare_amount)
mean(GreenT$total_amount)
sd(GreenT$total_amount)

