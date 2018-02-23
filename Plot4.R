setwd("D:/Module4")
household<- read.table("household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")
Febhousehold <- household[household$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(Febhousehold$Date, Febhousehold$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalReactiveActivePower <- as.numeric(Febhousehold$Global_reactive_power)
subM1 <- as.numeric(Febhousehold$Sub_metering_1)
subM2 <- as.numeric(Febhousehold$Sub_metering_2)
subM3 <- as.numeric(Febhousehold$Sub_metering_3)
globalActivePower <- as.numeric(Febhousehold$Global_active_power)
voltage <- as.numeric(Febhousehold$Voltage)
png("Plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, subM1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subM2, type="l", col="red")
lines(datetime, subM3, type="l", col="blue")
legend("topright", c("SubMetering_1", "SubMetering_2", "SubMetering_3"), lty=1, lwd=1, col=c("black", "red", "blue"))
plot(datetime, globalReactiveActivePower, type="l", ylab="Global Reactive Power", xlab="datetime")



dev.off()
