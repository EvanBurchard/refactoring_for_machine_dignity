array_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array_2 = []
array_1.each{|element|
  if element < 5
    array_2.push(element)
  end
}
puts array_2

#vs.
array_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array_2 = array_1.select{|element| element < 5}

puts array_2

#vs.
array_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array_2 = array_1.reject{|element| element > 4}

puts array_2

#vs.
array_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array_2 = array_1[0..3]
puts array_2

