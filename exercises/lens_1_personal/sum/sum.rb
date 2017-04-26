def s(a, b);a+b;end;puts s(2, 3)

#vs.

def s(a, b)
  a+b
end
puts s(2, 3)

#vs.

def sum(a, b)
  return (a + b)
end

puts sum(2, 3)

#vs.

def sum a, b
  a + b
end

puts sum 2, 3

#vs.

puts 5

#vs.

def sum a, b
  5
end

#vs.

puts 2 + 3

#vs. (assuming we want to reuse this function)

def sum a, b
  return a + b
end

