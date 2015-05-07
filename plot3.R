source("get_data.R")
png("plot3.png")

with(data, plot(Time, Sub_metering_1, 
                xlab = "",
                ylab = "Energy sub metering",
                type = "l"))
points(data$Time, data$Sub_metering_2, col = "red", type = "l")
points(data$Time, data$Sub_metering_3, col = "blue", type = "l")

legend("topright", legend = names(data)[7:9], col = c("black", "red", "blue"), lty = 1)

dev.off()