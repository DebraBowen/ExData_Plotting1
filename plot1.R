plot1 <- 
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
        png("plot1.png")
        
        ## Create histogram plot of Global_active_power vs. Frequency
        hist(housepower$Global_active_power, freq = TRUE, col = "red", 
             main = "Global Active Power", 
             xlab = "Global Active Power (kilowatts)", 
             ylab = "Frequency")
        
        ## Close all graphics devices
        graphics.off()
}