plot4 <- 
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
                png("plot4.png")
                
                ## Set plot frame for 2 rows and 2 columns
                par(mfrow=c(2,2))
                
                ## Plot Global Active Power
                plot(housepower$Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")
                
                ## Plot Voltage vs. DateTime
                plot(housepower$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
                
                ## Plot Sub_metering 1, 2, 3 vs. DateTime
                plot(housepower$DateTime, housepower$Sub_metering_1, type="l", xlab="", 
                     ylab="Energy sub metering", main = "")
                points(housepower$DateTime, housepower$Sub_metering_2, col = "red", type = "l")
                points(housepower$DateTime, housepower$Sub_metering_3, col = "blue", type = "l")
                legend("topright", lwd = 1, col = c("black", "red", "blue"), 
                       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")
                
                ## Plot Global Reactive Power
                plot(housepower$Global_reactive_power, xlab = "datetime", ylab = "Global Reactive Power", type = "l")
                
                ## Close all graphics devices
                graphics.off()
}