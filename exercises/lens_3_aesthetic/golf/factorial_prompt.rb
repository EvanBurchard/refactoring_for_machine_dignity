def factorial(number)
  if(number > 1)
    factorial(number - 1) * number
  else
    1
  end
end

def assert(code_as_string)
  !!eval(code_as_string) ? true : (raise 'NOOOOOOO')
end
assert('factorial(4) == 24')
assert('factorial(3) == 6')
