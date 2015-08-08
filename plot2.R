
household_power_consumption <- read.csv("C:/Users/Sarah/Downloads/Coursera Exploratory Data Analysis/household_power_consumption.txt", sep=";", quote="", stringsAsFactors=FALSE, colClasses=c("character", "character", "numeric","numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings="?")
subset <- subset(household_power_consumption, Date == "1/2/2007"|Date=="2/2/2007")

setwd("C:/Users/Sarah/Downloads/Coursera Exploratory Data Analysis")
png(filename="Plot2.png")

plot(subset$Global_active_power, subset$time, pch='.', ylab="Global Active power (kilowatts)", xlab='', xaxt='n')
lines(subset$Global_active_power, subset$time)
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))

dev.off()
