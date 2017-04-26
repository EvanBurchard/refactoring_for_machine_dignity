def assert(code_as_string)
  !!eval(code_as_string) ? true : (raise 'NOOOOOOO')
end
old_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@new_array = []
20.times do |i|
  @new_array.push(old_array[i] * 2)
end
puts @new_array
assert('@new_array == [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 
28, 30, 32, 34, 36, 38, 40]')
