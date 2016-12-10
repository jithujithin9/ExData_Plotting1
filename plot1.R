#       EDA Project

power <- read.csv("./Data/household_power_consumption.txt",sep = ";",
                  na.strings = "?")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
rm(power)

#       ploting
Global_active_power <- as.numeric(subpower$Global_active_power)
hist(Global_active_power,col = 2,
     main="Global Active Power", xlab="Global Active Power in kilowatts")

##      Saving to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()