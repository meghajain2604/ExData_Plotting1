data <- read.csv("household_power_consumption.txt", header = T,sep = ';',na.strings = "?",stringsAsFactors = FALSE , dec = ".")

data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]   
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time) 
data1$Datetime <- as.POSIXct(date_time)

par(mfrow=c(2,2), mar= c(4,4,2,1))
with(data1, {
  plot(Global_active_power~Datetime, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
  plot(Voltage~Datetime, type = "l", xlab = "", ylab = "Voltage(volt)")
  plot(Sub_metering_1~Datetime, type = "l", ylab = "Global Active Power(kilowatts)", xlab = "")
  lines(Sub_metering_2~Datetime,col = "red")
  lines(Sub_metering_3~Datetime, col = "blue")
  legend("topright", col = c("black","red","blue"), lty = 1,lwd = 2,
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(Global_reactive_power~Datetime, type = "l", xlab = "", ylab = "Global Reactive Power(kilowatts)")
  
})

dev.copy(png, file = "plot4.png", height = 480, width = 480)
dev.off()

  
  
  

     
     
     
     
     
     
     )
