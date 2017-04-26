def assert(code_as_string)
  !!eval(code_as_string) ? true : (raise 'NOOOOOOO')
end
array_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum = 0
array_1.each{ |element| sum = element + sum }
