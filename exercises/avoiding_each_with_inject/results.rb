array_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#sum = 0
#array_1.each{ |element| sum = element + sum }

sum = array_1.inject{ |accumulator, element| accumulator + element }
sum_plus_five = array_1.inject(5){ |accumulator, element| accumulator + element }

puts sum
puts sum_plus_five
