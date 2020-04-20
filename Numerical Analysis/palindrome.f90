program palindrome
implicit none
integer :: i
read *, i
print *, is_palindrome(i)
contains

logical function is_palindrome(i)
integer copy, temp, size, i
logical c
size = 0
temp = i
copy = 0
DO WHILE(temp>0)
    temp = temp/10
    size = size + 1
END DO
temp = i
size = size-1
DO WHILE(temp>0)
    copy = copy + mod(temp, 10)*(10**size)
    temp = temp / 10
    size = size -1
END DO
IF(i.EQ.copy) THEN 
    c = .True.
ELSE 
    c = .False. 
endif
is_palindrome = c

return
end
end program
