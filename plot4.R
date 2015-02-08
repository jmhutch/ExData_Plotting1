# read file datas
source("loadData.R")
powerData <- loadData()

opt.xlab <- ""
opt.ylab <- "Energy sub metering"
opt.cols <- c("black", "red", "blue")

plotPng("plot4.png")

# 1 2
# 3 4
par(mfrow=c(2,2))

# plot 1
plot(powerData$DateTime, powerData$Global_active_power,
    type = "l",
    xlab = "",
    ylab = "Global Active Power")

#plot 2
plot(powerData$DateTime, powerData$Voltage,
    type = "l",
    xlab = "datetime",
    ylab = "Voltage")

#plot 3
plot(powerData$DateTime, powerData$Sub_metering_1,
    col = opt.cols[1],
    type = "l",
    xlab = opt.xlab,
    ylab = opt.ylab)

lines(powerData$DateTime, powerData$Sub_metering_2, col = opt.cols[2])
lines(powerData$DateTime, powerData$Sub_metering_3, col = opt.cols[3])

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    col = opt.cols,
    lty = 1,
    bty = "n")

#plot 4
plot(powerData$DateTime, powerData$Global_reactive_power,
    type = "l",
    xlab = "datetime",
    ylab = "Global_reactive_power")

dev.off()
