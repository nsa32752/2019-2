program prime_1
implicit none
integer, dimension(1:100, 1:100) :: A
integer i, j
i = 1
do i=1, 100
    read(*,*) (A(i, j), j=1, 100)
end do
print *, is_sum(A)
contains

Integer function is_sum(A)
    integer :: sum, i, k
    integer, dimension(1:100, 1:100) :: A
    sum = 0
    i = 2
    k = 1
    do while(i <= 100)
        sum = sum + A(i,k)
        print *, sum
        i = i + 1
        k = k + 1
    end do
    is_sum = sum
return
end

end program
