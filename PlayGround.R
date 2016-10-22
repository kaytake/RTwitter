

runif(max = 5,min = 2,1)

dbinom(30,500,prob = 0.05)

diff(pbinom(c(10,30), size = 500, prob = 0.05))

s <- 50
p <- 0.1
db <- dbinom(1:s,size = s, prob = p)
pb <- pbinom(1:s, size = s, prob = p)

dg <- dgeom(0:s, prob = p)

plot(dg)
plot(pb)
