## download file
fileurl = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl, destfile="./elec_consumption.zip", method="curl")
## unzip file
if(file.exists("./elec_consumption.zip")) {unzip("./elec_consumption.zip", exdir = ".")}
## load table
power_cons <- read.table("./household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

## convert date
power_cons$Date <- as.Date(power_cons$Date, "%d/%m/%Y")
## subset data to only from 2007-02-01 and 2007-02-02
power_cons <- subset(power_cons, (Date >= "2007-02-01" & Date <= "2007-02-02"))
## convert time
power_cons$Time <- strptime(paste(power_cons$Date, power_cons$Time), "%Y-%m-%d %H:%M:%S", tz = "Europe/Paris")

## histgram
hist(power_cons$Global_active_power, main = "Global Active Power", col = "Red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

## output in PNG file format
png(file = "plot1.png", width = 480, height = 480)
dev.off()