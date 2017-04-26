def assert(code_as_string)
  !!eval(code_as_string) ? true : (raise 'NOOOOOOO')
end


# smart ass answer

def factorial(n)
  if(n == 4)
    24
  else
    6
  end
end


assert('factorial(4) == 24')
assert('factorial(3) == 6')

def factorial(n)
  n == 4 ? 24 : 6
end

assert('factorial(4) == 24')
assert('factorial(3) == 6')

# vs 

def factorial(n)
  (1..n).reduce(1, :*)
end

assert('factorial(4) == 24')
assert('factorial(3) == 6')

