setwd("C:\\Users\\MSI GF63\\Desktop\\IT24101049")
getwd()

data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

popvar<-var(Weight.kg.)
popmn<-mean(Weight.kg.)

samples<-c()

n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n
s.means<-apply(samples,2,mean)
sample.mean<-mean(s.means)
sample.sd<-sd(s.means)

print(s.means)
print(sample.mean)
print(sample.sd)

truesd=sample.sd/6
print(truesd)

truemean=sample.mean/6
print(truemean)

truesd
sample.sd
truemean
sample.mean