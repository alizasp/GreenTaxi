skewness(GreenT$passenger_count)
2*sqrt(6/length(GreenT$passenger_count))

skewness(GreenT$trip_distance)
2*sqrt(6/length(GreenT$trip_distance))

skewness(GreenT$fare_amount)
2*sqrt(6/length(GreenT$fare_amount))

skewness(GreenT$total_amount)
2*sqrt(6/length(GreenT$total_amount))


kurtosis(GreenT$passenger_count)
4*sqrt(6/length(GreenT$passenger_count))


kurtosis(GreenT$trip_distance)
4*sqrt(6/length(GreenT$trip_distance))

kurtosis(GreenT$fare_amount)
4*sqrt(6/length(GreenT$fare_amount))

kurtosis(GreenT$total_amount)
4*sqrt(6/length(GreenT$total_amount))