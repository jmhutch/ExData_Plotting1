# read file datas
source("loadData.R")
powerData <- loadData()

opt.xlab <- ""
opt.ylab <- "Energy sub metering"
opt.cols <- c("black", "red", "blue")

plotPng("plot3.png")

plot(powerData$DateTime, powerData$Sub_metering_1,
    col = opt.cols[1],
    type = "l",
    xlab = opt.xlab,
    ylab = opt.ylab)

lines(powerData$DateTime, powerData$Sub_metering_2, col = opt.cols[2])
lines(powerData$DateTime, powerData$Sub_metering_3, col = opt.cols[3])

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    col = opt.cols,
    lty=1)

dev.off()
