mean(GreenTaxi_Feb_09_2018$trip_distance)
sd(GreenTaxi_Feb_09_2018$trip_distance)
fivenum(GreenTaxi_Feb_09_2018$trip_distance)


mean(GreenTaxi_Feb_09_2018$fare_amount)
sd(GreenTaxi_Feb_09_2018$fare_amount)
fivenum(GreenTaxi_Feb_09_2018$fare_amount)

cor(GreenTaxi_Feb_09_2018$fare_amount, GreenTaxi_Feb_09_2018$trip_distance)
#passenger_count = Intercept + (β ∗ trip_distance)
linearMod <- lm(fare_amount ~ trip_distance, data=GreenTaxi_Feb_09_2018)  # build linear regression model on full data
print(linearMod)
summary(linearMod)
library("ggpubr")
ggscatter(GreenTaxi_Feb_09_2018, x = "trip_distance", y = "fare_amount",
add = "reg.line", conf.int = TRUE,
cor.coef = TRUE, cor.method = "pearson",
xlab = "Distance in Miles", ylab = "Fare Amount in USD")
