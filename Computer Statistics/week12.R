# 1.
pbinom(3, 10, 0.4, FALSE) + dbinom(3, 10, 0.4)

# 2.
i = 0
while(i <= 1){
    if(pbinom(15, 100, i, TRUE) < 0.2) break
    i = i + 0.001
}
i

# 3.
dpois(3, 1.5)
