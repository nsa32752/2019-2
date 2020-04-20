x <- rnorm(320, 43.2, 8)
y <-subset(x, x>=55)
length(y)/320
pnorm(55, 43.2, 8, FALSE) + dnorm(55, 43.2, 8)

x2 <- rt(100, 10)
y2 <- dt(x2, 10)
plot(x2, y2)
