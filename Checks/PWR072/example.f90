! PWR072: Add an explicit save attribute when initializing variables in their
!         declaration

program test_implicit_save
  call counter
  call counter

contains

subroutine counter()
  integer :: count = 0
  count = count + 1
  print *, count
end subroutine
end program test_implicit_save
