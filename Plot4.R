library(lubridate)
read.csv('subsetdata.txt', header=T) -> data
data$date2 <- dmy_hms(paste(data$Date,data$Time))
png('Plot4.png', height=480, width=480)
par(mfrow=c(2,2))
plot(data$date2, data$Global_active_power, type='l', xlab='', ylab='Global Active Power')
plot(data$date2, data$Voltage, type='l', xlab='datetime', ylab='Voltage')
plot(data$date2, data$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
points(data$date2, data$Sub_metering_2, type='l', col='red')
points(data$date2, data$Sub_metering_3, type='l', col='blue')
legend('topright', legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), lty=c(1,1,1), col=c('black','blue','red'), bty='n')
plot(data$date2, data$Global_reactive_power, type='l', xlab='datetime', ylab='Global_reactive_power')

dev.off()

