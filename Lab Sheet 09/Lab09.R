setwd("C:\\Users\\MSI GF63\\Desktop\\IT24101049")
getwd()

#1
memes <- c(3,7,11,0,7,0,4,5,6,2)
t.test(memes,mu =3)

#2
weights <- c(17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)
t.test(weights, mu = 25, alternative = "less") 

res <- t.test(weights , mu=25, alternative="less")
res$statistic
res$p.value
res$conf.int

#3
y <- rnorm(30,mean=9.8,sd=0.05)

t.test(y,mu=10,alternative="greater")

#3
set.seed(123) 
sugar_levels <- rnorm(30, mean = 9.8, sd = 0.05)
sugar_levels 

t.test(sugar_levels, mu = 10, alternative = "greater")

# Exercise 
#1(i)
 time <- rnorm(25, mean = 45, sd = 2)
time 

#1(ii)
t.test(time, mu = 46, alternative = "less")
