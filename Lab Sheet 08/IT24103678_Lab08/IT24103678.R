setwd("C:\\Users\\PC\\Desktop\\IT24103678_Lab08")
getwd()

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

#Q1
# mean
popmn <- mean(Weight.kg.)
popmn

#variance
popvar <- var(Weight.kg.)
popvar

#SD
popsd <- sd(Weight.kg.)
popsd

#Q2
samples <- c()
n <- c()

for(i in 1:25){
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)                 
  n <- c(n, paste("s", i))                     
}

colnames(samples) <- n

s.means <- apply(samples, 2, mean)
s.vars <- apply(samples, 2, var)

s.means
s.vars

# Q3
samplesmean <- mean(s.means)

samplevars <- var(s.means)

popmn
samplesmean

truevar <- popvar / 6

samplevars
truevar
