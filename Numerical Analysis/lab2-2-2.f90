program main
integer i, j
real*8 k, l
real*8, dimension(1:200, 1:200) :: A
real*8, dimension(1:200, 1:200) :: Ainv
real*8, dimension(1:200, 1:200) :: work
real*8, dimension(1:200, 1:200) :: pivot
real*8 res1, res2, sum1

external DGETRF
external DGETRI
external norm
k=1
l=1
DO i=1, 200
      DO j=1, 200
            A(i, j) = 1/(l+k-1)
            k = k+1
      END DO
      l = l+1
END DO
Ainv = A
call DGETRF(200, 200, Ainv, 200, pivot, info)
call DGETRI(200, Ainv, 200, pivot, work, 200, info)
sum1=0
res1=0
res2=0
DO i=1, 200
      DO j=1, 200
            sum1 = sum1+ abs(A(i,j))
      END DO
      IF(res1 .lt. sum1) THEN
            res1 = sum1
      END IF
END DO
sum1= 0
DO i=1, 200
      DO j=1, 200
            sum1 = sum1+ abs(Ainv(i,j))
      END DO
      IF(res2 .lt. sum1) THEN
            res2 = sum1
      END IF
END DO
print *, res1*res2

end program
