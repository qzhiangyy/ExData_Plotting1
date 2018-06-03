rFile<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
rFile$Date<-as.Date(rFile$Date,format='%d/%m/%Y')
sFile<-subset(rFile,Date %in% as.Date(c('2007-02-01','2007-02-02')))
sFile$Global_active_power<-as.numeric(as.character(sFile$Global_active_power))
#plotl
png(filename="plot1.png", width = 480, height = 480, units = "px")
hist(sFile$Global_active_power,col="red",main="Gloval Active Power",xlab="Global Active Power (kilowatts)")
dev.off()