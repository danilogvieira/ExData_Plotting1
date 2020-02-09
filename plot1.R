dados <- read.table("household_power_consumption.txt",header = FALSE,sep = ";",skip = 66637,nrows = 2880, col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))  ##read the data base

png("plot1.png", width = 480, height = 480) ##open the png device

hist(dados$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")  ## build the histogram

dev.off()  ##close the png device


