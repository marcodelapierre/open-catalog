! PWD002: Unprotected multithreading reduction operation

subroutine example(array)
  implicit none
  integer, intent(in) :: array(:)
  integer :: i, sum

  sum = 0

  !$omp parallel do default(none) private(i) shared(array, sum)
  do i = 1, size(array, 1)
    sum = sum + array(i)
  end do
end subroutine example
