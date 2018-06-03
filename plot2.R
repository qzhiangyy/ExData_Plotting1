sFile$dateTime<-strptime(paste(sFile$Date,sFile$Time,sep=" "),format="%Y-%m-%d %H:%M:%S")
png(filename="plot2.png", width = 480, height = 480, units = "px")
plot(sFile$dateTime,sFile$Global_active_power,type="l",xlab="",ylab ="Global Active Power (kilowatts)")
dev.off()