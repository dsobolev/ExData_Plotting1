colClassesV <- c("character", "character", rep("numeric", 7))
data <- read.table("household_power_consumption.txt", sep = ";", 
                   header = T, na.strings = "?", colClasses = colClassesV)
rm(colClassesV)
data$Date <- as.Date(data$Date, "%d/%m/%Y")
#subsetting
data <- subset(data, (Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02")))
