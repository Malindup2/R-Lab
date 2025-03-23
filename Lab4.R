# Q1

getwd()
setwd("C:\\Users\\it23391390\\R")

data<-read.table("DATA 4.txt", header = TRUE)
data

# to editor mode
fix(data)

names(data)<-c("Team", "Attendence", "Salary", "Years")
fix(data)

attach(data)

# Q2
# 2 a

# for vertical box plot
?boxplot
boxplot(Attendence, main="Boxplot for attendence", ylab="Attendence")
# for horizontal box plot
boxplot(Attendence, main="Boxplot for attendence", ylab="Attendence", horizontal = TRUE)

# Histogram
hist(Attendence, main = "Histogram for attendence")

# stem & leaf plot
stem(Attendence)
stem(Salary)
stem(Years)

# 2 b
mean(Attendence)
median(Attendence)
sd(Attendence)
summary(Attendence)

# 2 c
summary(Attendence)
quantile(Attendence)

#3rd quartile
quantile(Attendence)[2]
#4th quartile
quantile(Attendence)[4]

# 2 d
IQR(Attendence)

# Q3

getMode<-function(x) {
  counts<-table(x)
  print(max(counts))
  names(counts)[counts==max(counts)]
}

getMode(Years)
getMode(Salary)

# Q4

get_outliers<-function(y) {
  q1<-quantile(y)[2]
  q3<-quantile(y)[4]
  
  iqr<-q3-q1
  ub<-q3+(1.5*iqr)
  lb<-q1-(1.5*iqr)
  
  print(paste("Outliers: ", paste(sort(y[y<lb | y>ub]), collapse = ",")))
}

get_outliers(Years)

