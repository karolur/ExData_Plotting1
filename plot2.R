d<- read.table("household_power_consumption.txt", sep=";", header=TRUE, colClasses=c("character", "character", rep("numeric",7)),na="?")
d$Date<-as.Date(d$Date,"%d/%m/%Y")
d<-subset(d,d$Date>="2007-02-01" & d$Date<="2007-02-02")
d$Time<-strptime(paste(d$Date,d$Time),format="%Y-%m-%d %H:%M:%S")
plot(d$Time,d$Global_active_power, type= "l",ylab="Global Active Power (kilowatts)",xlab="")
dev.copy(png,file="plot2.png",width = 480, height = 480)
dev.off()
