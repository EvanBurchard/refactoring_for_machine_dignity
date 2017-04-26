old_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
#new_array = []
#20.times do |i|
  #new_array.push(old_array[i] * 2)
#end
#puts new_array

#old_array = []
#old_array.each {|element| new_array.push(element * 2) }

#vs.

new_array = old_array.map {|element| element * 2 }
puts new_array
