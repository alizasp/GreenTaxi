#CORRELATION

#Inspired from http://r-statistics.co/Linear-Regression.html

#cor(cars$speed, cars$dist)
cor(GreenT$passenger_count, GreenT$trip_distance)
#passenger_count = Intercept + (β ∗ trip_distance)

linearMod <- lm(passenger_count ~ trip_distance, data=GreenT)  # build linear regression model on full data
print(linearMod)

summary(linearMod)

library("ggpubr")
ggscatter(GreenT, x = "trip_distance", y = "passenger_count", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Distance in Miles", ylab = "Passenger Count")



cor(GreenT$fare_amount, GreenT$trip_distance)
#passenger_count = Intercept + (β ∗ trip_distance)

linearMod <- lm(fare_amount ~ trip_distance, data=GreenT)  # build linear regression model on full data
print(linearMod)

summary(linearMod)

library("ggpubr")
ggscatter(GreenT, x = "trip_distance", y = "fare_amount", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Distance in Miles", ylab = "Fare Amount in USD")
