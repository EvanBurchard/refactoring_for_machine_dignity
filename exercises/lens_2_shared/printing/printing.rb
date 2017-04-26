puts 3
puts 3
puts 8
puts 3
puts 3
puts 3
puts 3
puts 3
puts 2
puts 3
puts 1
puts 3
puts 3

# vs.

def print_numbers
  puts 3
  puts 3
  puts 8
  puts 3
  puts 3
  puts 3
  puts 3
  puts 3
  puts 2
  puts 3
  puts 1
  puts 3
  puts 3
end
print_numbers

#vs.

def print_numbers
  puts 3
  puts 3
  puts 8
  puts 3
  puts 3
  puts 3
  puts 3
  puts 3
  puts 2
  puts 3
  puts 1
  puts 3
  puts 3
  true
end

print_numbers

#vs.
def print_numbers
  [3, 3, 8, 3, 3, 3, 3, 3, 2, 3, 1, 3, 3].each do |number|
    puts number
  end
  # true
end
print_numbers

#vs.

def print_numbers(number_array)
  number_array.each do |number|
    puts number
  end
end
print_numbers([3, 3, 8, 3, 3, 3, 3, 3, 2, 3, 1, 3, 3])

#vs.

def print_numbers(number_array)
  number_array.each{ |number| puts number }
end
print_numbers([3, 3, 8, 3, 3, 3, 3, 3, 2, 3, 1, 3, 3])

#vs.

def print_numbers(number_array)
  number_array.each(&method(:puts))
end
print_numbers([3, 3, 8, 3, 3, 3, 3, 3, 2, 3, 1, 3, 3])


#vs.

puts [3, 3, 8, 3, 3, 3, 3, 3, 2, 3, 1, 3, 3]

#vs.

class Array
  def print_numbers
    puts self
  end
end

[3, 3, 8, 3, 3, 3, 3, 3, 2, 3, 1, 3, 3].print_numbers

#vs.
class OurArray < Array
  def print_numbers
    puts self
  end
end

OurArray.new([3, 3, 8, 3, 3, 3, 3, 3, 2, 3, 1, 3, 3]).print_numbers

#vs.

#[3, 3, 3, 3, 3, 3, 3, 8, 3, 3, 3, 3, 3, 2, 3, 1, 3, 3].puts
[3, 3, 8, 3, 3, 3, 3, 3, 2, 3, 1, 3, 3].send(:puts)

#vs.
class OurArray < Array
private
  def print_numbers
    puts self
  end
end

OurArray.new([3, 3, 8, 3, 3, 3, 3, 3, 2, 3, 1, 3, 3]).send(:print_numbers)

