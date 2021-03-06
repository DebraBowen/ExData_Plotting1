plot3 <- 
        function(){
                
                ## Set working dir
                setwd("C:/Users/Debra/Documents/Debra Bowen Data Science/Functions")
                
                ## Load package
                library(data.table)
                
                ## Set variables for read        
                filepath <- paste("C:\\Users\\Debra\\Documents\\Debra Bowen Data Science\\",
                                  "household_power_consumption.txt", sep="")
                
                ## Read data set into a data frame
                housepower <- 
                        read.table(filepath, header = TRUE, sep = ";", 
                                   stringsAsFactors = FALSE, 
                                   ##colClasses = datacols, 
                                   na.strings = "?")
                
                ## Convert Date/Time columns to datetime format
                housepower$DateTime <- strptime(paste(housepower$Date, housepower$Time, sep=" "), 
                                                format="%d/%m/%Y %H:%M:%S")
                
                ## Select data from 02/01/2007 and 02/02/2007 only
                housepower <- housepower[(housepower$Date =="1/2/2007" | housepower$Date=="2/2/2007"),]
                
                ## Open PNG device
                png("plot3.png")
                
                ## Plot 1st set
                plot(housepower$DateTime, housepower$Sub_metering_1, type="l", xlab="", 
                     ylab="Energy sub metering", main = "")
                
                ## Add 2nd and 3rd set
                points(housepower$DateTime, housepower$Sub_metering_2, col = "red", type = "l")
                points(housepower$DateTime, housepower$Sub_metering_3, col = "blue", type = "l")
                legend("topright", lwd = 1, col = c("black", "red", "blue"), 
                       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
                
                ## Close all graphics devices
                graphics.off()
}