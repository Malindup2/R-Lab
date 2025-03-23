#Q1.1
#What is the distribution of X?
  

x ~ Bin(44, 0.92)
x

#Q1.2
dbinom(40, 44, 0.92)
?dbinom
  
#Q1.3
#probability that less than or equal to 35 children are cured
pbinom(35, 44, 0.92)


#Q1.4
#probability that at least 38 children are cured?
1- pbinom(37, 44, 0.92)


#Q1.5
#probability that between 40 and 42 (both inclusive) children are cured?
pbinom(41, 44, 0.92) - pbinom(39, 44, 0.92)


#Q2

#1
?dpois
dpois(6, 4.5)

#2
ppois(6, 4.5, lower.tail = FALSE)

#3
dpois(3, 0.5)

#Q3
?pexp()

#1
pexp(3, rate = 1/2)

#2
pexp(4, rate = 1/2, lower.tail = FALSE)

#3
pexp(4, rate = 1/2)- pexp(2, rate = 1/2)



#Q4
#1
?pnorm
1-pnorm(37.9, 36.8, 0.4 )


#2
pnorm()
pnorm(36.9, 36.8, 0.4) - pnorm(36.4, 36.8, 0.4)


#3
?qnorm()
qnorm(0.012, 36.8, 0.4)


#4
qnorm(0.99, 36.8, 0.4)


