source("get_data.R")

png("plot1.png")
with(data, hist(Global_active_power, 
                main = "Total Active Power", 
                col = "red", 
                xlab = "Global Active Power (kilowats)"))
dev.off()