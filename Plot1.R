setwd("D:/Module4")
household<- read.table("household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")
Febhousehold <- household[household$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(Febhousehold$Global_active_power)
png("Plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
