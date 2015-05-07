source("get_data.R")
png("plot2.png")

with(data, plot(Time, Global_active_power, 
                xlab = "",
                ylab = "Global Active Power (kilowatts)",
                type = "l"))
dev.off()