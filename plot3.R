with(power_cons, {
     plot(Time, Sub_metering_1, type = "l", col = "black",
                      xlab = "", ylab = "Energy sub metering")
    lines(Time, Sub_metering_2, col = "red")
    lines(Time, Sub_metering_3, col = "blue")
     })

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = 1, lwd = 2, col = c("black", "red", "blue"))

## output in PNG file format
dev.copy(png,file = "plot3.png", width = 480, height = 480)
dev.off()