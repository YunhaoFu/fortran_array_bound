implicit none

integer :: array(-4:1), test

array(:) = 1

test = -5
array(test)  = 2 ! ifort no error
                 ! gfortran no error

array(-5)  = 2 ! ifort no error
               ! gfortran Warning: Array reference at (1) is out of bounds (-5 < -4) in dimension 1

print *, array

end
