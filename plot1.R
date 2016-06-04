##data already subsetted from 1/2/2007 to 2/2/2007
usedData <- read.table(file="household_power_consumption2.txt", sep=";", header = TRUE)
hist(as.numeric(usedData$Global_active_power),breaks = 15, xlab = "Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", col = "red", axes = TRUE)
dev.copy(png, file="plot1.png", width = 480, height = 480, units = "px")
dev.off()