program main
implicit none
real*8 mid, res, a, error, b
integer i
a=1.0
b=0
error=0.00000001

DO i=1, 3
    mid = (a+b)/2.0
    res = mid**3 - cos(mid)
    if(res .lt. 0) then
        b=mid
    else
        a=mid
    end if
END DO
print *, "bisection method"
print *, mid

a=1.0
b=a-(a**3-cos(a))/(3*a**2+sin(a))
DO WHILE(abs(b-a)>error)
    a=b
    b=a-(a**3-cos(a))/(3*a**2+sin(a))
END DO
print *, "Newton's method"
print *, b
END PROGRAM
