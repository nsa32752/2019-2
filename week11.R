library(MASS)
x <- Nile
summary(x)
hist(x, main="histogram", breaks=7, col='grey', border="white", prob="F")

# y <- survey
# n <- table(y$Smoke)
# data <- c(n)
# data
# lab <- c("Heavy","Never","Occas","Regul")
# pct <- round(data/sum(data)*100)
# lab <- paste(lab, pct)
# lab <- paste(lab, "%", sep="")
# lab
# pie(data, init.angle=90, label=lab, col=rainbow(length(data)))
