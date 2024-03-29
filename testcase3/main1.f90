program prog1
  use iso_c_binding, only : C_DOUBLE, C_INT
  interface
    subroutine func1(a, b, c) BIND(C)
    use iso_c_binding, only : C_DOUBLE, C_INT
    implicit none
    real(kind=C_DOUBLE), intent(in) :: a(*)
    real(kind=C_DOUBLE), intent(out) :: b
    real(kind=C_DOUBLE), intent(out) :: c(*)
    end subroutine func1
  end interface

  real(kind=C_DOUBLE) :: a_loc(2)
  real(kind=C_DOUBLE) :: b_loc
  real(kind=C_DOUBLE) :: c_loc(0)
  a_loc = 5.
  b_loc = 6.
  print *, 'loc(a)=', loc(a_loc)
  print *, 'loc(b)=', loc(b_loc)
  print *, 'loc(c)=', loc(c_loc)
  print *, 'calling func1...'
  call func1(a_loc, b_loc, c_loc)
  print *, 'func1 ok b=', b_loc
end program prog1

