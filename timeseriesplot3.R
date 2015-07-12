

source("loaddata.R")
png(filename = "timeseriesplot3.png", 
    width = 480, height = 480,
    units = "px", bg = "white")
plot(newdata2$DateTime, newdata2$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(newdata2$DateTime, newdata2$Sub_metering_2, col = "red")
lines(newdata2$DateTime, newdata2$Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_Metering_1", "Sub_Metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()