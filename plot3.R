
household_power_consumption <- read.csv("C:/Users/Sarah/Downloads/Coursera Exploratory Data Analysis/household_power_consumption.txt", sep=";", quote="", stringsAsFactors=FALSE, colClasses=c("character", "character", "numeric","numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings="?")
subset <- subset(household_power_consumption, Date == "1/2/2007"|Date=="2/2/2007")

setwd("C:/Users/Sarah/Downloads/Coursera Exploratory Data Analysis")
png(filename="Plot3.png")

plot(subset$Sub_metering_1, subset$time, pch='.', ylab="Energy Sub Metering", xaxt='n', xlab='')
lines(subset$Sub_metering_1, subset$time, col="black")
lines(subset$Sub_metering_2, subset$time, col="red")
lines(subset$Sub_metering_3, subset$time, col="blue")
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
