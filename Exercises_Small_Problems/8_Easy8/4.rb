def substrings(string)
  result = []
  start = 0
  string.size.times do
    0.upto(string.size - 1) do |index|
      result << string[start..index]
      start += 1 if result.last[-1] == string[-1]
    end
  end
  result.delete('')
  result
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
