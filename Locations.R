#Location

#Create a new column called PUneighborhood filled with NA (assumes your data frame is called taxi):

#GreenT$PUneighborhood <- NA
#GreenT$PUneighborhood <- GreenT$PULocationID
  
#Sets the rows that have 132, 138 or 100 in the PULocationID column to have 'Midtown' in the new column:

GreenT <- GreenTaxi_2017_02
GreenT
GreenT$passenger_count
GreenT$trip_distance
GreenT$fare_amount
GreenT$total_amount



#PICK-UP LOCATION
#==================

#Midtown
GreenT$PUneighborhood<-recode(GreenT$PUneighborhood,"c(24,43,48,50,68,90,100,107,137,161,162,163,164,170,186,229,230,233,246)='Midtown'")

#Airports 1,132,138
GreenT$PUneighborhood<-recode(GreenT$PUneighborhood,"c(1,132,138)='Airport'")

#Downtown: 4,12,13,45,79,87,88,113,114,125,144,148,158,209,211,224,231,232,234,249,261
GreenT$PUneighborhood<-recode(GreenT$PUneighborhood,"c(4,12,13,45,79,87,88,113,114,125,144,148,158,209,211,224,231,232,234,249,261)='Downtown'")

#Harlem: 41,42,74,75,116,120,152,166
GreenT$PUneighborhood<-recode(GreenT$PUneighborhood,"c(41,42,74,75,116,120,152,166)='Harlem'")

#Islands: 103,104,105,194,202
GreenT$PUneighborhood<-recode(GreenT$PUneighborhood,"c(103,104,105,194,202)='Islands'")

#Uptown: 140,141,142,143,151,236,237,238,239,262,263
GreenT$PUneighborhood<-recode(GreenT$PUneighborhood,"c(140,141,142,143,151,236,237,238,239,262,263)='Uptown'")

#WashingtonHeights: 127,128,153,243,244
GreenT$PUneighborhood<-recode(GreenT$PUneighborhood,"c(127,128,153,243,244)='Washington_Heights'")


#Bronx: 3, 18, 20, 31, 32, 46, 47, 51, 58, 59, 60, 69, 78, 81, 94, 119, 126, 136, 147, 159, 167, 168, 169, 174, 182, 183, 184, 185, 199, 200, 208, 212, 213, 220, 235, 240, 241, 242, 247, 248, 250, 254, 259, 3, 18, 20, 31, 32, 46, 47, 51, 58, 59, 60, 69, 78, 81, 94, 119, 126, 136, 147, 159, 167, 168, 169, 174, 182, 183, 184, 185, 199, 200, 208, 212, 213, 220, 235, 240, 241, 242, 247, 248, 250, 254, 259 
GreenT$PUneighborhood<-recode(GreenT$PUneighborhood,"c(3, 18, 20, 31, 32, 46, 47, 51, 58, 59, 60, 69, 78, 81, 94, 119, 126, 136, 147, 159, 167, 168, 169, 174, 182, 183, 184, 185, 199, 200, 208, 212, 213, 220, 235, 240, 241, 242, 247, 248, 250, 254, 259, 3, 18, 20, 31, 32, 46, 47, 51, 58, 59, 60, 69, 78, 81, 94, 119, 126, 136, 147, 159, 167, 168, 169, 174, 182, 183, 184, 185, 199, 200, 208, 212, 213, 220, 235, 240, 241, 242, 247, 248, 250, 254, 259)='Bronx'")


#Brooklyn, 11, 14, 17, 21, 22, 25, 26, 29, 33, 34, 35, 36, 37, 39, 40, 49, 52, 54, 55, 61, 62, 63, 65, 66, 67, 71, 72, 76, 77, 80, 85, 89, 91, 97, 106, 108, 111, 112, 123, 133, 149, 150, 154, 155, 165, 177, 178, 181, 188, 189, 190, 195, 210, 217, 222, 225, 227, 228, 255, 256, 257 
GreenT$PUneighborhood<-recode(GreenT$PUneighborhood,"c(11, 14, 17, 21, 22, 25, 26, 29, 33, 34, 35, 36, 37, 39, 40, 49, 52, 54, 55, 61, 62, 63, 65, 66, 67, 71, 72, 76, 77, 80, 85, 89, 91, 97, 106, 108, 111, 112, 123, 133, 149, 150, 154, 155, 165, 177, 178, 181, 188, 189, 190, 195, 210, 217, 222, 225, 227, 228, 255, 256, 257)='Brooklyn'")


#Queens, 2, 7, 8, 9, 10, 15, 16, 19, 27, 28, 30, 38, 53, 56, 57, 64, 70, 73, 82, 83, 86, 92, 93, 95, 96, 98, 101, 102, 117, 121, 122, 124, 129, 130, 131, 132, 134, 135, 138, 139, 145, 146, 157, 160, 171, 173, 175, 179, 180, 191, 192, 193, 196, 197, 198, 201, 203, 205, 207, 215, 216, 218, 219, 223, 226, 252, 253, 258, 260 
GreenT$PUneighborhood<-recode(GreenT$PUneighborhood,"c(2, 7, 8, 9, 10, 15, 16, 19, 27, 28, 30, 38, 53, 56, 57, 64, 70, 73, 82, 83, 86, 92, 93, 95, 96, 98, 101, 102, 117, 121, 122, 124, 129, 130, 131, 132, 134, 135, 138, 139, 145, 146, 157, 160, 171, 173, 175, 179, 180, 191, 192, 193, 196, 197, 198, 201, 203, 205, 207, 215, 216, 218, 219, 223, 226, 252, 253, 258, 260)='Queens'")


#StatenIsland, 5, 6, 23, 44, 84, 99, 109, 110, 115, 118, 156, 172, 176, 187, 204, 206, 214, 221, 245, 251 
GreenT$PUneighborhood<-recode(GreenT$PUneighborhood,"c(5, 6, 23, 44, 84, 99, 109, 110, 115, 118, 156, 172, 176, 187, 204, 206, 214, 221, 245, 251)='Staten_Islands'")


#Other, 264, 265 
GreenT$PUneighborhood<-recode(GreenT$PUneighborhood,"c(264, 265)='Other'")


GreenT$PUneighborhood


#Pick-up Location Barplot
table(GreenT$PUneighborhood)
PUN <-table(GreenT$PUneighborhood)
barplot(PUN, main = "Bar Plot - NYC Green Taxis\nFebruary 9, 2017 Pick-up Locations per Ride", xlab = "Pick-up Locations", col = "aquamarine", ylab = "Rides")


#DROP-OFF LOCATION
#==================

#Midtown
GreenT$Doneighborhood<-recode(GreenT$Doneighborhood,"c(24,43,48,50,68,90,100,107,137,161,162,163,164,170,186,229,230,233,246)='Midtown'")

#Airports 1,132,138
GreenT$Doneighborhood<-recode(GreenT$Doneighborhood,"c(1,132,138)='Airport'")

#Downtown: 4,12,13,45,79,87,88,113,114,125,144,148,158,209,211,224,231,232,234,249,261
GreenT$Doneighborhood<-recode(GreenT$Doneighborhood,"c(4,12,13,45,79,87,88,113,114,125,144,148,158,209,211,224,231,232,234,249,261)='Downtown'")

#Harlem: 41,42,74,75,116,120,152,166
GreenT$Doneighborhood<-recode(GreenT$Doneighborhood,"c(41,42,74,75,116,120,152,166)='Harlem'")

#Islands: 103,104,105,194,202
GreenT$Doneighborhood<-recode(GreenT$Doneighborhood,"c(103,104,105,194,202)='Islands'")

#Uptown: 140,141,142,143,151,236,237,238,239,262,263
GreenT$Doneighborhood<-recode(GreenT$Doneighborhood,"c(140,141,142,143,151,236,237,238,239,262,263)='Uptown'")

#WashingtonHeights: 127,128,153,243,244
GreenT$Doneighborhood<-recode(GreenT$Doneighborhood,"c(127,128,153,243,244)='Washington_Heights'")


#Bronx: 3, 18, 20, 31, 32, 46, 47, 51, 58, 59, 60, 69, 78, 81, 94, 119, 126, 136, 147, 159, 167, 168, 169, 174, 182, 183, 184, 185, 199, 200, 208, 212, 213, 220, 235, 240, 241, 242, 247, 248, 250, 254, 259, 3, 18, 20, 31, 32, 46, 47, 51, 58, 59, 60, 69, 78, 81, 94, 119, 126, 136, 147, 159, 167, 168, 169, 174, 182, 183, 184, 185, 199, 200, 208, 212, 213, 220, 235, 240, 241, 242, 247, 248, 250, 254, 259 
GreenT$Doneighborhood<-recode(GreenT$Doneighborhood,"c(3, 18, 20, 31, 32, 46, 47, 51, 58, 59, 60, 69, 78, 81, 94, 119, 126, 136, 147, 159, 167, 168, 169, 174, 182, 183, 184, 185, 199, 200, 208, 212, 213, 220, 235, 240, 241, 242, 247, 248, 250, 254, 259, 3, 18, 20, 31, 32, 46, 47, 51, 58, 59, 60, 69, 78, 81, 94, 119, 126, 136, 147, 159, 167, 168, 169, 174, 182, 183, 184, 185, 199, 200, 208, 212, 213, 220, 235, 240, 241, 242, 247, 248, 250, 254, 259)='Bronx'")


#Brooklyn, 11, 14, 17, 21, 22, 25, 26, 29, 33, 34, 35, 36, 37, 39, 40, 49, 52, 54, 55, 61, 62, 63, 65, 66, 67, 71, 72, 76, 77, 80, 85, 89, 91, 97, 106, 108, 111, 112, 123, 133, 149, 150, 154, 155, 165, 177, 178, 181, 188, 189, 190, 195, 210, 217, 222, 225, 227, 228, 255, 256, 257 
GreenT$Doneighborhood<-recode(GreenT$Doneighborhood,"c(11, 14, 17, 21, 22, 25, 26, 29, 33, 34, 35, 36, 37, 39, 40, 49, 52, 54, 55, 61, 62, 63, 65, 66, 67, 71, 72, 76, 77, 80, 85, 89, 91, 97, 106, 108, 111, 112, 123, 133, 149, 150, 154, 155, 165, 177, 178, 181, 188, 189, 190, 195, 210, 217, 222, 225, 227, 228, 255, 256, 257)='Brooklyn'")


#Queens, 2, 7, 8, 9, 10, 15, 16, 19, 27, 28, 30, 38, 53, 56, 57, 64, 70, 73, 82, 83, 86, 92, 93, 95, 96, 98, 101, 102, 117, 121, 122, 124, 129, 130, 131, 132, 134, 135, 138, 139, 145, 146, 157, 160, 171, 173, 175, 179, 180, 191, 192, 193, 196, 197, 198, 201, 203, 205, 207, 215, 216, 218, 219, 223, 226, 252, 253, 258, 260 
GreenT$Doneighborhood<-recode(GreenT$Doneighborhood,"c(2, 7, 8, 9, 10, 15, 16, 19, 27, 28, 30, 38, 53, 56, 57, 64, 70, 73, 82, 83, 86, 92, 93, 95, 96, 98, 101, 102, 117, 121, 122, 124, 129, 130, 131, 132, 134, 135, 138, 139, 145, 146, 157, 160, 171, 173, 175, 179, 180, 191, 192, 193, 196, 197, 198, 201, 203, 205, 207, 215, 216, 218, 219, 223, 226, 252, 253, 258, 260)='Queens'")


#StatenIsland, 5, 6, 23, 44, 84, 99, 109, 110, 115, 118, 156, 172, 176, 187, 204, 206, 214, 221, 245, 251 
GreenT$Doneighborhood<-recode(GreenT$Doneighborhood,"c(5, 6, 23, 44, 84, 99, 109, 110, 115, 118, 156, 172, 176, 187, 204, 206, 214, 221, 245, 251)='Staten_Islands'")


#Other, 264, 265 
GreenT$Doneighborhood<-recode(GreenT$Doneighborhood,"c(264, 265)='Other'")


GreenT$Doneighborhood


#Drop-off Location Barplot
table(GreenT$Doneighborhood)
DON <-table(GreenT$Doneighborhood)
barplot(DON, main = "Bar Plot - NYC Green Taxis\nFebruary 9, 2017 Drop-off Locations per Ride", xlab = "Pick-up Locations", col = "aquamarine", ylab = "Rides")



  
#You can repeat the above command for each of the neighbourhoods, and just have to list the location IDs for that neighbourhood.
  
  #Airports 1,132,138
  
  #Downtown: 4,12,13,45,79,87,88,113,114,125,144,148,158,209,211,224,231,232,234,249,261
  
  #Harlem: 41,42,74,75,116,120,152,166
  
  #Islands: 103,104,105,194,202
  
  #Midtown: 24,43,48,50,68,90,100,107,137,161,162,163,164,170,186,229,230,233,246
  
  #Uptown: 140,141,142,143,151,236,237,238,239,262,263
  
  #WashingtonHeights: 127,128,153,243,244

library(tibble)
dataset <- data.frame(a = 1:5, b = 2:6, c=3:7)
add_column(dataset, d = 4:8, .after = 2)
  