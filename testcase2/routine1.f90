module routine1_mod

implicit none

abstract interface
    subroutine OBJ(a) BIND(C)
    use iso_c_binding, only : C_DOUBLE, C_INT
    implicit none
    integer(C_INT), intent(out) :: a
    end subroutine OBJ
end interface

contains

subroutine routine1(callback) BIND(C)
use, intrinsic :: iso_c_binding, only : C_DOUBLE, C_INT
implicit none

procedure(OBJ) :: callback
integer(C_INT) :: a
a = 5

print *, "routine1 (fortran) ..."
call callback(a)
print *, "routine1 (fortran) ok a=", a

end subroutine routine1


end module routine1_mod