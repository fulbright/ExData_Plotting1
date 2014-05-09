library("sqldf")
mysql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
data <- read.csv.sql("C:/Users/e552054/Documents/household_power_consumption.txt", sql = mysql, sep = ";")
date <- paste(data$Date, data$Time)
date2 <- strptime(date, format = "%d/%m/%Y %H:%M:%S")
plot(date2, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png")
dev.off()