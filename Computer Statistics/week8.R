library(MASS)

d <- data.frame(Holders=Insurance$Holders,
                District=Insurance$District,
                Group=Insurance$Group)
v <- sapply(d[,1], function(x)(x<500))
newcol <- data.frame(check=v)
d2 <- cbind(d, newcol)
d3 <- merge(Insurance, d2)
head(d3, 10)
tapply(d3$Claims, d3$Age, sum)
