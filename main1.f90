program prog1
  use iso_c_binding, only : C_DOUBLE, C_INT
  interface
    subroutine func1(a) BIND(C)
    use iso_c_binding, only : C_DOUBLE, C_INT
    implicit none
    integer(kind=C_INT) :: a
    end subroutine func1
  end interface

  integer(C_INT) :: a
  a = 5.
  print *, 'calling func1...'
  call func1(6)
  print *, 'func1 ok'
end program prog1

