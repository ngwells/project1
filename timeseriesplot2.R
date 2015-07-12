
source("loaddata.R")
png(filename = "timeseriesplot2.png", 
     width = 480, height = 480,
     units = "px", bg = "transparent")
plot(newdata2$DateTime, newdata2$Global_active_power, 
     type = "l",
     xlab = "Day",
     ylab = "Global Active Power (kilowatts)")
dev.off()