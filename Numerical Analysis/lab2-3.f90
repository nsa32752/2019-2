program main
external DGETRF
external DGETRI
external norm
real*8 error, x, y, z, rx1, ry1, rz1, rx2, ry2, rz2
real*8, dimension(1:3, 1:3) :: JacobiA
real*8, dimension(1:3, 1:3) :: Jinv
real*8, dimension(1:3, 1:3) :: work
real*8, dimension(1:3, 1:3) :: pivot
x=1.0
y=-1.0
z=1.2
error=0.00000001
DO 
    rx1 = x**2 + 2*y**2 + 4*z**2-7
    ry1 = 2*x**2 + y**3 + 6*z-10
    rz1 = x*y*z + 1
    JacobiA(1,1)= 2*x
    JacobiA(1,2)= 4*y
    JacobiA(1,3)= 8*z
    JacobiA(2,1)= 4*x
    JacobiA(2,2)= 3*(y**2)
    JacobiA(2,3)=6
    JacobiA(3,1)=y*z
    JacobiA(3,2)=x*z
    JacobiA(3,3)=x*y
    Jinv = JacobiA
    call DGETRF(3, 3, Jinv, 3, pivot, info)
    call DGETRI(3, Jinv, 3, pivot, work, 3, info)
    rx2 = x-(Jinv(1,1)*rx1+Jinv(1,2)*ry1+Jinv(1,3)*rz1)
    ry2 = y-(Jinv(2,1)*rx1+Jinv(2,2)*ry1+Jinv(2,3)*rz1)
    rz2 = z-(Jinv(3,1)*rx1+Jinv(3,2)*ry1+Jinv(3,3)*rz1)
    IF (abs((rx2-x)/rx2) < error )EXIT
    IF (abs((ry2-y)/ry2) < error )EXIT
    IF (abs((rz2-z)/rz2) < error )EXIT
    x=rx2
    y=ry2
    z=rz2
END DO

print *, x
print *, y
print *, z

END PROGRAM
