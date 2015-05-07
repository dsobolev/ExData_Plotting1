source("get_data.R")
png("plot4.png")

par(mfrow = c(2,2))

# Global Active Power
with(data, plot(Time, Global_active_power, 
                xlab = "",
                ylab = "Global Active Power",
                type = "l"))
# Voltage
with(data, plot(Time, Voltage, 
                xlab = "datetime",
                ylab = "Voltage",
                type = "l"))

# Energy sub metering
with(data, plot(Time, Sub_metering_1, 
                xlab = "",
                ylab = "Energy sub metering",
                type = "l"))
points(data$Time, data$Sub_metering_2, col = "red", type = "l")
points(data$Time, data$Sub_metering_3, col = "blue", type = "l")

legend("topright", legend = names(data)[7:9], col = c("black", "red", "blue"), lty = 1)

# Global reactive power
with(data, plot(Time, Global_reactive_power, 
                xlab = "datetime",
                type = "l"))
dev.off()