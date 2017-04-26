def assert(code_as_string)
  !!eval(code_as_string) ? true : (raise 'NOOOOOOO')
end

def returns_true
  true
end

assert("assert('returns_true')")


def sum(a, b)
  a + b
end
puts sum(2, 3)

y = sum(2, 3)

assert('sum(2, 3) == 5')


#NOTE: eval runs methods ok but not local variables
#x = 5
#@x = 5
#def x
  #5
#end
assert('sum(x, 3)==8')
