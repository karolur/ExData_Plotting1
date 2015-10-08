d<- read.table("household_power_consumption.txt", sep=";", header=TRUE, colClasses=c("character", "character", rep("numeric",7)),na="?")
d$Date<-as.Date(d$Date,"%d/%m/%Y")
d<-subset(d,d$Date>="2007-02-01" & d$Date<="2007-02-02")
d$Time<-strptime(paste(d$Date,d$Time),format="%Y-%m-%d %H:%M:%S")

