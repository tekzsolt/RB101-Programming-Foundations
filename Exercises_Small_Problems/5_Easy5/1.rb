def ascii_value(string)
  counter = 0
  total = 0
  while counter < string.size
    total += string[counter].ord
    counter += 1
  end
  total
end

# SOLUTION 2
# def ascii_value(string)
#   total = 0
#   string.each_char {|char| total += char.ord}
#   total
# end

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0
