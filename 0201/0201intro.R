1:3
4:1
c(1:3, 4:1)
cv=c('x', 'y')
cv
paste(cv, 1:10, sep="")
x=c(10.4, 5.6, 3.1, 6.4, 21.7)
x
assign('x', c(10.4, 5.6, 3.1, 6.4, 21.7))
x
c(10.4, 5.6, 3.1, 6.4, 21.7) = x
y = c(x,0,x)
y
v=2*x + y +1
v
x
x+1
x[1]
x[2]
x[-1]
x[0]
x[4:5]
x[-c(1,4:5)]
log(x)
exp(x)
sin(x)
sqrt(x)
m=mean(x)
m
sum(x)
median(x)
length(x)
sum((x-mean(x))^2)/(length(x)-1)
sort(x)
rev(x)
sort(x, decreasing=TRUE)
s3=seq(-5, 5, by=.2)
x>6
x<=6
!(x<=6)
v1=(x<=6)
v2=(x>10)
v2
v1|v2
v1&v2
z=c(1:3, NA)
ind=is.na(z)
ind
x=array(1:20, dim=c(4:5))
x
dim(x)
data()
USArrests
names(USArrests)
USArrests$Murder
data()
USArrests
names(USArrests$Murder)
USArrests$Murder
mean(USArrests$Murder)
median(USArrests$Murder)
library(survival)
dim(veteran)
names(veteran)
veteran
head(veteran)
hist(veteran)
hist(x, veteran)
veteran(1:20,)
veteran[1:20,]
hist(AirPassengers)
hist(veteran)
dim(veteran)
veteranhist = read.table(veteran)
hist(veteran$age)
hist(veteran$time)
hist(veteran$time, 
     main="The time of Our Veteran",
     xlab = "Our Veteran",
     ylab = "Time",
     border = "blue",
     col = "orange",
     las = 1,
     breaks = 5)
