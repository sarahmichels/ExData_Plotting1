
household_power_consumption <- read.csv("C:/Users/Sarah/Downloads/Coursera Exploratory Data Analysis/household_power_consumption.txt", sep=";", quote="", stringsAsFactors=FALSE, colClasses=c("character", "character", "numeric","numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings="?")
subset <- subset(household_power_consumption, Date == "1/2/2007"|Date=="2/2/2007")

setwd("C:/Users/Sarah/Downloads/Coursera Exploratory Data Analysis")
png(filename="Plot4.png")

par(mfrow=c(2,2))

plot(subset$Global_active_power, subset$time, pch='.', ylab="Global Active power (kilowatts)", xaxt='n', xlab='')
lines(subset$Global_active_power, subset$time)
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))



plot(subset$Voltage, subset$time, pch='.', ylab="Global Active power (kilowatts)", xaxt='n', xlab="datetime")
lines(subset$Voltage, subset$time)
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))

plot(subset$Sub_metering_1, subset$time, pch='.', xaxt='n', xlab='', ylab="Energy Sub metering")
lines(subset$Sub_metering_1, subset$time, col="black")
lines(subset$Sub_metering_2, subset$time, col="red")
lines(subset$Sub_metering_3, subset$time, col="blue")
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


plot(subset$Global_reactive_power, subset$time, pch='.', ylab="Global Active power (kilowatts)", xaxt='n', xlab="datetime")
lines(subset$Global_reactive_power, subset$time)
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
dev.off()
