setwd("C:\\Users\\it23391390\\Desktop\\Lab4")
getwd()

data<-read.csv("DATA3.csv",header=TRUE,sep=",")
fix("data")

#rename the columns
names(data)<-c("Age","Gender","Accomodation")
#names is a function
#vector is a smallest unit in R

fix(data)

#rename categorical data
data$Gender<-factor(data$Gender,c(1,2),c("Male","Female"))
data$Gender

data$Accomodation<-factor(data$Accomodation,c(1,2,3),c("Home","Boarded","Lodging"))
data$Accomodation
attach(data)
#create frequency table
gender.freq<- table(Gender)
gender.freq

acc.freq<- table(Accomodation)
acc.freq
#create a pie chart
pie(gender.freq,"pie chart for Gender")
pie(acc.freq,"pie chart for Accomodation")
#bar plot
barplot(gender.freq,main="Bar count for Gender",ylab="frequency")
#to start the x axis with 0
abline(h=0)
#two way frequency table 
gender_acc.freq<-table(Gender,Accomodation)
gender_acc.freq
#stack bar chart
barplot(gender_acc.freq,main="Gender and Accomodation"
        (legend="topright",legend=rownames(gender_acc.freq)))
#clustered bar chart
barplot(gender_acc.freq,beside= TRUE, main="Gender and Accomodation"
        (legend="topright",legend=rownames(gender_acc.freq)))

