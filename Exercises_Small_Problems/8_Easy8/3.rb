def substrings_at_start(text)
  substrings = []
  index = 0

  loop do
    substring << if substrings.empty?
                   text[index]
                 else
                   substrings.last + text[index]
                 end
    index += 1
    break if index > text.size - 1
  end

  substrings
end

# LAUNCH SCHOOL SOLUTION
# def substrings_at_start(string)
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
