# read file datas
source("loadData.R")
powerData <- loadData()

opt.xlab <- ""
opt.ylab <- "Global Active Power (kilowatts)"

plotPng("plot2.png")

plot(powerData$DateTime, powerData$Global_active_power,
    type="l",
    xlab = opt.xlab,
    ylab = opt.ylab)

dev.off()
