
GreenTaxi_2017_02
GreenT <- GreenTaxi_2017_02

stripchart(GreenT$passenger_count, method = "jitter", xlab = "Passager Count", main= "Passenger Count per Ride of NYC Green Taxis")
stripchart(GreenT$passenger_count, method = "stack", xlab = "Passager Count", main= "Passenger Count per Ride of NYC Green Taxis")
stripchart(GreenT$passenger_count, xlab = "Passager Count", main= "Passenger Count per Ride of NYC Green Taxis")

stripchart(GreenT$passenger_count, method = "jitter", xlab = "Passager Count", main= "Passenger Count per Ride of NYC Green Taxis")
stripchart(GreenT$trip_distance, method = "jitter", xlab = "Trip Distance", main= "Trip Distance per Ride of NYC Green Taxis")
stripchart(GreenT$fare_amount, method = "jitter", xlab = "Fare Amounts", main= "Fare Amounts per Ride of NYC Green Taxis")


hist(GreenT$trip_distance,xlab = "Trip Distance", main= "Histogram of NYC Green Taxis\nFebruary 9, 2017 Trip Distance per Ride", freq = FALSE, breaks = 100, col = "aquamarine",xlim = c(0, 25))
hist(GreenT$passenger_count,xlab = "Passenger Count", main= "Histogram of NYC Green Taxis\nFebruary 9, 2017 Passenger Count per Ride", freq = FALSE, breaks = 10, col = "aquamarine",xlim = c(0, 8))
hist(GreenT$fare_amount,xlab = "Fare Amount", main= "Histogram of NYC Green Taxis\nFebruary 9, 2017 Fare Amount per Ride", freq = FALSE, breaks = 150, col = "aquamarine",xlim = c(0, 100))
hist(GreenT$total_amount,xlab = "Total Amount", main= "Histogram of NYC Green Taxis\nFebruary 9, 2017 Total Amount per Ride", freq = FALSE, breaks = 300, col = "aquamarine",xlim = c(0, 100))

#Good to see outliers
plot(GreenT$trip_distance, type = "h",main= "NYC Green Taxis\nFebruary 9 2017 Trip Distance per Ride")
plot(GreenT$trip_distance, type = "p",main= "NYC Green Taxis\nFebruary 9 2017 Trip Distance per Ride")
plot(GreenT$passenger_count, type = "h",main= "NYC Green Taxis\nFebruary 9 2017 Passager Count per Ride")
plot(GreenT$passenger_count, type = "p",main= "NYC Green Taxis\nFebruary 9 2017 Passager Count per Ride")
plot(GreenT$fare_amount, type = "h",main= "NYC Green Taxis\nFebruary 9 2017 Fare Amount per Ride")
plot(GreenT$fare_amount, type = "p",main= "NYC Green Taxis\nFebruary 9 2017 Fare Amount per Ride")
plot(GreenT$total_amount, type = "h",main= "NYC Green Taxis\nFebruary 9 2017 Total Amount per Ride")
plot(GreenT$total_amount, type = "p",main= "NYC Green Taxis\nFebruary 9 2017 Total Amount per Ride")


table(GreenT$passenger_count)
count <-table(GreenT$passenger_count)
barplot(count, main = "Bar Plot - NYC Green Taxis\nFebruary 9, 2017 Passenger Count per Ride", xlab = "Passenger Count", col = "aquamarine", ylab = "Rides")


table(GreenT$PULocationID)
counts <-table(GreenT$PULocationID)
barplot(counts, main = "Bar Plot - NYC Green Taxis\nFebruary 9, 2017 Pickup Locations", xlab = "Pickup Location", col = c("aquamarine"), ylab = "Rides")


Airports 1,132,138

Downtown: 4,12,13,45,79,87,88,113,114,125,144,148,158,209,211,224,231,232,234,249,261

Harlem: 41,42,74,75,116,120,152,166

Islands: 103,104,105,194,202

Midtown: 24,43,48,50,68,90,100,107,137,161,162,163,164,170,186,229,230,233,246

Uptown: 140,141,142,143,151,236,237,238,239,262,263

WashingtonHeights: 127,128,153,243,244


