getwd()
setwd("C:\\Users\\IT24101049\\Desktop\\IT24101049")
getwd()

#1
Delivery_Times <- read.table("Exercise - Lab 05.txt",header=TRUE,sep="",stringsAsFactors = FALSE)

#2
hist(Delivery_Times$Delivery_Time_.minutes.,breaks = seq(20,70,length.out=10),right = FALSE,
    main = "Histogram of Delivery Times",xlab="Delivery Time(minutes)",ylab = "Frequency", col="skyblue",border = "black")
#4

times <- Delivery_Times$Delivery_Time_.minutes.
breaks <- seq(20,70,length.out=10)
freq <- hist(times,breaks,right=FALSE,plot=FALSE)
cum_freq <- cumsum(freq$counts)
plot(breaks[-1],cum_freq,type="o",col="blue",lwd=2,pch=16,main="Cumulative Frequency Polygon(ogive)",xlab="Delivery Time(minutes)",ylab="Cumulative Frequency")
grid()