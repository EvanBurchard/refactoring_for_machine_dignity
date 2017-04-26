def assert(code_as_string)
  eval(code_as_string) ? true : (raise 'NOOOOOOO')
end

#def s(a,b);a+b;end;puts s(2,3)
#assert('s(2,3)==5')


assert('sum(2, 3) == 5')
