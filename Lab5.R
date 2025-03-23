setwd("C:\\Users\\it2339310\\R")
getwd()

#read the text file
data1<-read.table("Data.txt", header = TRUE, sep = ",")
data1

fix(data1)

#rename the table header
names(data1)<-c("x1", "x2")
fix(data1)

#to save changes
attach(data1)
attach(data1)

# Q1

hist(x2, main = "Histogram for share holders")

# Q2
#accepting only 7 clsses. so, length=8 ---> (7+1)

histogram<-hist(x2, main = "Histogram for share holders", breaks = seq(130, 270, length = 8))

# Q3
#identify the break points --> $breaks

breakss<-round(histogram$breaks)
breakss

#identify the frequency of each class --> $counts

freq<-histogram$counts
freq

#identify the mid points of each class

mid<-histogram$mids
mid

#contruct a frequency table

#define a class range
#define empty vector to store the table we created (as a memory location)

classes<-c()

for(i in 1:length(breakss)-1) {
  classes[i]<-paste0("[", breakss[i], "-", breakss[i+1], "]")
}
classes

#cbind --> combine class_intervals & frequencies together
cbind(class_intervals = classes, frequencies = freq)

# Q4
#frequency polygon

lines(mid, freq) #frequency polygon on histogram

plot(mid, freq, type = "o", main = "Frequency Polygon", xlab = "Shareholders", ylab = "frequency", ylim = c(0, max(freq)))

#line
plot(mid, freq, type = "l", main = "Frequency Polygon", xlab = "Shareholders", ylab = "frequency", ylim = c(0, max(freq)))

#points
plot(mid, freq, type = "p", main = "Frequency Polygon", xlab = "Shareholders", ylab = "frequency", ylim = c(0, max(freq)))

# Q5

#cum frequency
cum.frq<-cumsum(freq)
cum.frq

cfreq<-c()  #creating an empty vector for frequency

#for loop --> to make first cumulative frequency as 0

for(i in 1:length(breakss)) {
  if(i == 1) {
    cfreq[i] = 0
  } else {
    cfreq[1] = cum.frq[i-1]
  }
}

cbind(classes, mid, freq, breakss, cfreq)

plot()

