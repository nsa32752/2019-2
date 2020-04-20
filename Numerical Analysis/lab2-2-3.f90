program main
integer i, j
real*8 k, l
real*8, dimension(1:500, 1:500) :: A
real*8, dimension(1:500, 1:500) :: Ainv
real*8, dimension(1:500, 1:500) :: work
real*8, dimension(1:500, 1:500) :: pivot
real*8 res1, res2, sum1

external DGETRF
external DGETRI
external norm
k=1
l=1
DO i=1, 500
    k=1
      DO j=1, 500
            A(i, j) = 1/(l+k-1)
            k = k+1
      END DO
      l = l+1
END DO
Ainv = A
call DGETRF(500, 500, Ainv, 500, pivot, info)
call DGETRI(100, Ainv, 500, pivot, work, 500, info)
sum1=0
res1=0
res2=0
DO i=1, 500
      DO j=1, 500
            sum1 = sum1+ abs(A(i,j))
      END DO
      IF(res1 .lt. sum1) THEN
            res1 = sum1
      END IF
END DO
sum1= 0
DO i=1, 500
      DO j=1, 500
            sum1 = sum1+ abs(Ainv(i,j))
      END DO
      IF(res2 .lt. sum1) THEN
            res2 = sum1
      END IF
END DO
print *, res1*res2

end program
