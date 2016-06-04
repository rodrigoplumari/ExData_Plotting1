##data already subsetted from 1/2/2007 to 2/2/2007
usedData <- read.table(file="household_power_consumption2.txt", sep=";", header = TRUE)

datetimeRange <- strptime(paste(usedData$Date, usedData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(usedData$Global_active_power)

plot(datetimeRange, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.copy(png, file="plot2.png", width = 480, height = 480, units = "px")
dev.off()