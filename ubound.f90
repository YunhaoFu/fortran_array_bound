implicit none

integer :: array(-4:1), test

array(:) = 1

test = 2
array(test)  = 2 ! ifort no error: 
                 ! gfortran no error

array(2)  = 2  ! ifort no error
               ! to check: -check bounds -traceback -g

               ! gfortran Warning: Array reference at (1) is out of bounds (2 > 1) in dimension 1

print *, array

end
