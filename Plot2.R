library(lubridate)
read.csv('subsetdata.txt', header=T) -> data
data$date2 <- dmy_hms(paste(data$Date,data$Time))
png('Plot2.png', height=480, width=480)
plot(data$date2, data$Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)')
dev.off()

