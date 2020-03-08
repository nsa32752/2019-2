simulation <- function(n){
    dongdata <- 1:30
    count<- 0
    for(rep in 1:n){
        count <- count + choosestudent(dongdata)
    }
    print(count/n)
}

choosestudent <- function(dongdata){
    A <- sample(dongdata, 1)
    B <- sample(dongdata,1)
    while(A == B){
        B <- sample(dongdata, 1)
    }
    dong1 <- sample(dongdata, 10)
    for(i in 1:length(dong1)){
        dongdata <- subset(dongdata, dongdata!=dong1[i])    
    }
    dong2 <- sample(dongdata, 7)
    for(i in 1:length(dong2)){
        dongdata <- subset(dongdata, dongdata!=dong2[i])    
    }
    dong3 <- sample(dongdata, 5)
    for(i in 1:length(dong3)){
        dongdata <- subset(dongdata, dongdata!=dong3[i])    
    }
    for(i in dong1){
        if(i == A){
            for(i in dong1){
                if(i == B){
                    return(1)
                }
            }
        }
    }
    for(i in dong2){
        if(i == A){
            for(i in dong2){
                if(i == B){
                    return(1)
                }
            }
        }
    }
    for(i in dong3){
        if(i == A){
            for(i in dong3){
                if(i == B){
                    return(1)
                }
            }
        }
    }
    return(0)
}

simulation(100000)