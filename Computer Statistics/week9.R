game <- function(inp){
    print("가위바위보 게임")
    user <- c(0,0,0)
    count <- 1
    while(count <= inp){
        print(paste(count, "현재 게임입니다."))
        inp2 <- readline("가위, 바위, 보 중 하나를 내세요: ")
        use <- 0
        comp <- sample(c(0,1,2), 1)
        if(inp2 == "바위"){
            use <- 1
        } 
        if(inp2 == "보"){
            use <- 2
        }
        if(use == comp){
            print("비겼습니다.")
            user[2] = user[2] +1
        }
        else if(use == 0 & comp==1){
            print("졌습니다.")
            user[3] = user[3] +1
        }
        else if(use == 0 & comp==2){
            print("이겼습니다.")
            user[1] = user[1] +1
        }
        else if(use == 1 & comp==0){
            print("이겼습니다.")
            user[1] = user[1] +1
        }
        else if(use == 1 & comp==2){
            print("졌습니다.")
            user[3] = user[3] +1
        }
        else if(use == 2 & comp==0){
            print("졌습니다.")
            user[3] = user[3] +1
        }
        else if(use == 2 & comp==1){
            print("이겼습니다.")
            user[1] = user[1] +1
        }
        count = count + 1
    }
    print(paste("전적", user[1], "승", user[2], "무", user[3], "패"))
}
