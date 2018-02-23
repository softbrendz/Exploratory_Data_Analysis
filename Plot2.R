setwd("D:/Module4")
household<- read.table("household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")
Febhousehold <- household[household$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(Febhousehold$Date, Febhousehold$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(Febhousehold$Global_active_power)
png("Plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
