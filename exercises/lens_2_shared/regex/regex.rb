def remove_prefix(string)
  if(string[0..5] == 'prefix')
    return string[6..-1]
  else
    return string
  end
end

def remove_prefix(string)
  string.gsub(/^prefix/, '')
end


def assert(code_as_string)
  !!eval(code_as_string) ? true : (raise 'NOOOOOOO')
end

assert('remove_prefix("prefix34") == "34"')

assert('remove_prefix("prefix34prefix") == "34prefix"')
