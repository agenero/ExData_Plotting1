############################################
## Coursera - Exploratory Data Analysis   ##
## Project #1 - Plot 1                    ##
############################################

## Read the full dataset
data_complete <- read.csv("./Exploratory Data Analysis/Project1/household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data_complete$Date <- as.Date(data_complete$Date, format="%d/%m/%Y")
## Subsetting the data for the required dates
data <- subset(data_complete, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_complete)
## Draw the plot #1
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
## Saving to file as PNG
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()