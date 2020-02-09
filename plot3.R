dados <- read.table("household_power_consumption.txt",header = FALSE,sep = ";",skip = 66637,nrows = 2880, col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))  ##read the data base


DateTime <- paste(as.Date(dados$Date, format = "%d/%m/%Y"), dados$Time)
DateTime <- strptime(DateTime, "%Y-%m-%d %H:%M:%S")

png("plot3.png", width = 480 , height = 480)


plot(DateTime,dados$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
lines(DateTime,dados$Sub_metering_1)
lines(DateTime,dados$Sub_metering_2, col = "red")
lines(DateTime,dados$Sub_metering_3, col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))

dev.off()