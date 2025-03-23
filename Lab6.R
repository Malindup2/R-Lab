setwd("C:\\Users\\it23391390\\R")

# Q1

data <- read.table("Forest.txt", header = TRUE, sep = ",")
data

fix(data)

attach(data)

# Q2

str(data)

# Q3

# 517 observations (can found in Environment section in right hand side panel)


# Q4

min(wind)
max(wind)

# Q5

summary(temp)

# Q6

boxplot(wind, horizontal = TRUE, outline = TRUE, pch = 50)

# Q7

# negative skewed distribution

# Q8

median(temp)

# Q9

mean(wind)
sd(wind)

# Q10

IQR(wind)

# Q11

table(day, month)
# 21 observations

# Q12

mean(temp[month = "Sep"])

# Q13

count <- table(day[month == "jul"])
names(count[count == max(count)])

# OR can use previous table to find answer
# answer ==> Saturday (8)

