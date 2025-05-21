module float_ops
  !> Basic floating point operations with divide-by-zero protection
  implicit none
  private
  public :: add, sub, mul, div, dp

  integer, parameter :: dp = kind(1.0d0)
contains

  !> Addition of two numbers
  function add(a, b) result(res)
    real(dp), intent(in) :: a, b
    real(dp) :: res
    res = a + b
  end function add

  !> Subtraction of two numbers
  function sub(a, b) result(res)
    real(dp), intent(in) :: a, b
    real(dp) :: res
    res = a - b
  end function sub

  !> Multiplication of two numbers
  function mul(a, b) result(res)
    real(dp), intent(in) :: a, b
    real(dp) :: res
    res = a * b
  end function mul

  !> Division of two numbers
  function div(a, b) result(res)
    real(dp), intent(in) :: a, b
    real(dp) :: res
    if (b == 0.0_dp) then
      print *, "Error: divide by zero"
      error stop 1
    end if
    res = a / b
  end function div

end module float_ops
