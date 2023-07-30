implicit none

integer :: array(-4:1), test

array(:) = 1

test = 2
array(test) = 2 ! ifort no error in compile
                ! gfortran no error in compile

array(2)  = 2   ! ifort no error
                ! to check: -check bounds -traceback -g
                ! terminated in run

                ! gfortran Warning: Array reference at (1) is out of bounds (2 > 1) in dimension 1
                ! to check: -fbounds-check
                ! terminated in run

!print *, array(-4:2)

end
