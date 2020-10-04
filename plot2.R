with(power_cons, plot(Time, Global_active_power, type = "l", 
                      xlab = "", ylab = "Global Active Power (Kilowatts)"))

## output in PNG file format
png(file = "plot2.png", width = 480, height = 480)
dev.off()