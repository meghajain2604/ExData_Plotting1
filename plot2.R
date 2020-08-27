data <- read.csv("household_power_consumption.txt", header = T,sep = ';',na.strings = "?",stringsAsFactors = FALSE , dec = ".")

data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
date_time <- strptime(paste(data1$Date,data1$Time,sep = " "), "%d/%m/%Y %H:%M:%S")
plot(date_time,data1$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
dev.copy(png, file = "plot2.png", width = 480, height = 480 )
dev.off()
