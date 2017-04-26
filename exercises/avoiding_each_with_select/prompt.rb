def assert(code_as_string)
  eval(code_as_string) ? true : (raise 'NOOOOOOO')
end

array_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array_2 = []
array_1.each{|element|
  if element < 5
    array_2.push(element)
  end
}
puts array_2
assert("array_2 == [1, 2, 3, 4]")

#vs.
array_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array_2 = array_1.select{|element| element < 5}

puts array_2


array_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array_2 = array_1[0..3]
puts array_2
