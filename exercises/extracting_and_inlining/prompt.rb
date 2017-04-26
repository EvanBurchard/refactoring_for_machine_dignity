def assert(code_as_string)
  !!eval(code_as_string) ? true : (raise 'NOOOOOOO')
end

def method_1
  method_2
end
def method_2
  method_3
end
def method_3
  method_4
end
def method_4
  4
end

assert('method_1 == 4')


def method_10(a)
  puts a * 2
  puts a * 3
  puts a * 3
end

method_10

def method_10(a)
  puts method_20(a)
  puts method_30(a)
  puts method_40(a)
end

def method_20
  a * 2
end
def method_30
  a * 3
end
def method_40
  a * 4
end
