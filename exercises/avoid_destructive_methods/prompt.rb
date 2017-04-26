def assert(code_as_string)
  !!eval(code_as_string) ? true : (raise 'NOOOOOOO')
end

# map vs. map!
