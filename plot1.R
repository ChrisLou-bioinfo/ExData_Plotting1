unzip(zipfile = "./exdata-data-household_power_consumption.zip")
datas<-read.table("./household_power_consumption.txt",sep=";",nrows= 2075260, header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = FALSE, na.strings= "?")
head(datas)
sub_data<-datas[datas$Date=="1/2/2007"|datas$Date=="2/2/2007",]
sub_data$Date <- as.Date(sub_data$Date, format = "%d/%m/%Y")
png("plot1.png", width = 480, height = 480)
hist(sub_data$Global_active_power, type="l", main="Global Active Power",col='red',ylab= "Frequency", xlab="Global Active Power(kilowatts)")
dev.off()


