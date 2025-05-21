program calc
  !> Interactive floating point calculator
  use float_ops
  implicit none

  character(len=1) :: op
  real(dp) :: a, b, result

  print *, 'Enter expression (e.g. 3.5 + 4.7):'
  read(*,*) a, op, b

  select case (op)
  case ('+')
    result = add(a, b)
  case ('-')
    result = sub(a, b)
  case ('*')
    result = mul(a, b)
  case ('/')
    result = div(a, b)
  case default
    print *, 'Unknown operator'
    stop 1
  end select

  print *, 'Result:', result
end program calc
