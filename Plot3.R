library(lubridate)
read.csv('subsetdata.txt', header=T) -> data
data$date2 <- dmy_hms(paste(data$Date,data$Time))
png('Plot3.png', height=480, width=480)
plot(data$date2, data$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
points(data$date2, data$Sub_metering_2, type='l', col='red')
points(data$date2, data$Sub_metering_3, type='l', col='blue')
legend('topright', legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), lty=c(1,1,1), col=c('black','blue','red'))
dev.off()

