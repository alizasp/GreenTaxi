#FARE DISTANCE:
mean(GreenT$trip_distance)
boxplot(GreenT$trip_distance, main = "NYC Green Taxi\nTrip Distances", horizontal= TRUE, xlabel = "Distances in Miles")
#without outliers:
boxplot(GreenT$trip_distance, main = "NYC Green Taxi Trip Distance per Ride\nWithout Outliers", horizontal= TRUE, outline = FALSE)

#t-test with conf. level of 95%:

#one side: with (Ho = 2.38) and (Ha > 2.38)
t.test(GreenT$trip_distance, mu=2.38, alternative = "greater", conf.level = 0.95)

#two sided: with (Ho = 2.38) and (Ha not= 2.38)
t.test(GreenT$trip_distance, mu=2.38, alternative = "two.sided", conf.level = 0.95)


#FARE AMOUNT
mean(GreenT$fare_amount)
boxplot(GreenT$fare_amount, main = "NYC Green Taxi Fare Amount per Ride", horizontal= TRUE)
#without outliers:
boxplot(GreenT$fare_amount, main = "NYC Green Taxi Fare Amount per Ride\nWithout Outliers", horizontal= TRUE, outline = FALSE)


#t-test with conf. level of 95%:

#one side: with (Ho = 10.26) and (Ha > 10.26)
t.test(GreenT$fare_amount, mu=10.26, alternative = "greater", conf.level = 0.95)

#two sided: with (Ho = 10.26) and (Ha not= 10.26)
t.test(GreenT$fare_amount, mu=10.26, alternative = "two.sided", conf.level = 0.95)



#TOTAL AMOUNT:
mean(GreenT$total_amount)
boxplot(GreenT$total_amount, main = "NYC Green Taxi\nTotal Amount per Ride", horizontal= TRUE)
#without outliers:
boxplot(GreenT$total_amount, main = "NYC Green Taxi Total Amount per Ride\nWithout Outliers", horizontal= TRUE, outline = FALSE)

#t-test with conf. level of 95%:

#one side: with (Ho = 12.77) and (Ha > 12.77)
t.test(GreenT$total_amount, mu=12.77, alternative = "greater", conf.level = 0.95)

#two sided: with (Ho = 12.77) and (Ha not= 12.77)
t.test(GreenT$total_amount, mu=12.77, alternative = "two.sided", conf.level = 0.95)


