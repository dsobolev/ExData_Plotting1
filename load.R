setInternet2(use = T)
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "data.zip", method = "internal")
unzip("data.zip")
file.remove("data.zip")