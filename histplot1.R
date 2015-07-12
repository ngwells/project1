



source("loaddata.R")
#making the histogram plot
png(filename = "histplot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(na.omit(newdata2$Global_active_power), 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12)
dev.off()
