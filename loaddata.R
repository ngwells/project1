

#set working directory
setwd("C:/Users/Brian/Documents/COURSERA")
#load the data and clean
newdata <- read.table("household_power_consumption.txt",
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")


#i know not the slick way
subset <- newdata$Date == "1/2/2007" | newdata$Date == "2/2/2007"
newdata2 <- newdata[subset, ]


#creating the dates - will need in later plots
newdate <- paste(newdata2$Date, newdata2$Time)
newdata2$DateTime <- strptime(newdate, "%d/%m/%Y %H:%M:%S")
rownames(newdata2) <- 1:nrow(newdata2)
#dim(newdata2)