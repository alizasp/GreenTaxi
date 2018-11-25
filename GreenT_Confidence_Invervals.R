#Confidence Intervals 

#GreenT$passenger_count
mpass <- mean(GreenT$passenger_count)
mpass
spass <- sd(GreenT$passenger_count)
spass
n <- 15954
#error <- qnorm(0.975)*spass/sqrt(n) (z-distribution, but n>30 => t-distribution)
error <- qt(0.975,df=n-1)*spass/sqrt(n)
error
left <- mpass - error
right <- mpass + error
left
right

#GreenT$trip_distance
mdist <- mean(GreenT$trip_distance)
mdist
sdist <- sd(GreenT$trip_distance)
sdist
n <- 15954
E_Dist <- qt(0.975,df=n-1)*sdist/sqrt(n) #(t-distribution since n >30)
E_Dist
left <- mdist - E_Dist
right <- mdist + E_Dist
left
right

#GreenT$fare_amount
mFare<- mean(GreenT$fare_amount)
mFare
sFare <- sd(GreenT$fare_amount)
sFare
n <- 15954
E_Fare <- qt(0.975,df=n-1)*sFare/sqrt(n) #(t-distribution since n >30)
E_Fare
left <- mFare - E_Fare
right <- mFare + E_Fare
left
right

#GreenT$total_amount
mTotal <- mean(GreenT$total_amount)
mTotal
sTotal <- sd(GreenT$total_amount)
sTotal
n <- 15954
E_Total <- qt(0.975,df=n-1)*sTotal/sqrt(n) #(t-distribution since n >30)
E_Total
left <- mTotal - E_Total
right <- mTotal + E_Total
left
right





mean(GreenT$fare_amount)
sd(GreenT$fare_amount)


mean(GreenT$total_amount)
sd(GreenT$total_amount)