par(mfcol = c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

## graph in row 1, column 1
with(power_cons, plot(Time, Global_active_power, type = "l", 
                      xlab = "", ylab = "Global Active Power"))

## graph in row 2, column 1
with(power_cons, {
  plot(Time, Sub_metering_1, type = "l", col = "black",
       xlab = "", ylab = "Energy sub metering")
  lines(Time, Sub_metering_2, col = "red")
  lines(Time, Sub_metering_3, col = "blue")
})
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, lwd = 1, cex=0.65, col = c("black", "red", "blue"), bty = "n")

## graph in row 1, column 2
with(power_cons, plot(Time, Voltage, type = "l",
                      xlab = "datetime", ylab = "Voltage"))

## graph in row 2, column 2
with(power_cons, plot(Time, Global_reactive_power, type = "l",
                      xlab = "datetime", ylab = "Global_reactive_power"))

## output in PNG file format
png(file = "plot4.png", width = 480, height = 480)
dev.off()