source("loaddata.R")
png(filename = "quadplot4.png", 
    width = 480, height = 480,
    units = "px", bg = "white")
par(mfrow = c(2, 2))

plot(newdata2$DateTime, newdata2$Global_active_power, 
     type = "l",
     xlab = "Day", ylab = "Global Active Power")

plot(newdata2$DateTime, newdata2$Voltage,
     type = "l",
     xlab = "Day", ylab = "Voltage")

plot(newdata2$DateTime, newdata2$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(newdata2$DateTime, newdata2$Sub_metering_2, col = "red")
lines(newdata2$DateTime, newdata2$Sub_metering_3, col = "blue")

legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"),
       lwd = 1)

plot(newdata2$DateTime, newdata2$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(newdata2)[4])
dev.off()