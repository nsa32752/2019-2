program prime_1
implicit none
integer num, k, m, j, n
k = 2
m = 0
n = 0
DO WHILE(k <= 50)
    j = 2
    num = 1
    DO WHILE(j < k)
        m = mod(k, j)
        n = n+1
        IF(m == 0) THEN
            num = 0
            EXIT
        END IF
        j = j+1
    END DO
    IF (num == 1) THEN
        print *, k
    END IF
    k = k+1
END DO
print *, n
end program
