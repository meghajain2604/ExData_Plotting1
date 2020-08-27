data <- read.csv("household_power_consumption.txt", header = T,sep = ';',na.strings = "?",stringsAsFactors = FALSE , dec = ".")
                   
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]                

hist(data1$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()