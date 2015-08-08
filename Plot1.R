household_power_consumption <- read.csv("C:/Users/Sarah/Downloads/Coursera Exploratory Data Analysis/household_power_consumption.txt", sep=";", quote="", stringsAsFactors=FALSE, colClasses=c("character", "character", "numeric","numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings="?")
subset <- subset(household_power_consumption, Date == "1/2/2007"|Date=="2/2/2007")


setwd("C:/Users/Sarah/Downloads/Coursera Exploratory Data Analysis")
png(filename="Plot1.png")
hist(subset$Global_active_power, col='red', xlab="Global Active power (kilowatts)")

dev.off()





