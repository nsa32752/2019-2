implicit none
	real(8) :: x, eps, ans
	read(*,*) x
	eps = 0.05
	contains
	
	real(8) function func()
	    real(8) :: mul, tmp, fac, i
	    print *, x
        ans = 1
	    mul =0
	    tmp= 1
	    fac= 1
	    i=1
	    do 
            mul = x ** i
            ans = ans + tmp*mul/fac
            write(*,*) ans
            if(ans < eps) then
                stop
            end if
            fac = fac * (i+1) * (i+2)
            i = i+2
            tmp = tmp *(-1)    
	    end do
        func = ans
        write(*,*) ans
    return 
	end
end