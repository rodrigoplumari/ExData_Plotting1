##data already subsetted from 1/2/2007 to 2/2/2007
usedData <- read.table(file="household_power_consumption2.txt", sep=";", header = TRUE)

datetimeRange <- strptime(paste(usedData$Date, usedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
subMetering1 <- as.numeric(usedData$Sub_metering_1)
subMetering2 <- as.numeric(usedData$Sub_metering_2)
subMetering3 <- as.numeric(usedData$Sub_metering_3)

plot(datetimeRange, subMetering1, type="l", xlab="", ylab="Energy Sub Metering")
lines(datetimeRange, subMetering2, type="l", col="red")
lines(datetimeRange, subMetering3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, bty="o", col=c("black", "red", "blue"))

dev.copy(png, file="plot3.png", width = 480, height = 480, units = "px")
dev.off()