
Sex <- sample(c("Boy","Girl","Uni"),300,replace = T)
Skin <- sample(c("Black","White"),300,replace = T)
z <- sample(letters[6:7],300,replace = T)

t1=table(Sex,Skin)
ftable(t1)
summary(t1)


tt <- Titanic
ftable(tt)

A#確率分布の描画
ylim <- c(0,0.6)
x <- seq(from=0, to=6, length.out = 100)
par(mfrow=c(2,2))
plot(x,dunif(x, min = 2, max = 4), main="Uniform", type='l', ylim = ylim)
plot(x, dnorm(x,mean = 3, sd=1), main="Norm", type = 'l',ylim = ylim)
plot(x, dexp(x, rate = 1/2), main="Exp", type = 'l', ylim = ylim)
plot(x, dgamma(x,shape = 2,rate = 1),main = "Gamma", type = 'l', ylim = ylim)



n <- 10000
s <- 10
p <- 0.5

x <- seq(from=-3, to=+3, length.out = 100)
y <- dnorm(x,mean = 0,sd=3)

plot(x,y, main="Standard Normal Distribution", type = 'l')
abline(h=0)
region.x <- x[1<=x & x<=2]
region.y <- y[1<=x & x<=2]
region.x <- c(region.x[1], region.x, tail(region.x,1))
region.y <- c(0,region.y,0)
polygon(region.x,region.y,density = -1, col="red")

par(mfrow=c(1,1))
