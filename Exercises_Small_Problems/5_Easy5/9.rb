def crunch(text)
  output = ''
  text.each_char do |char|
    output << char if output && output[-1] != char
  end

  output
end

# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''
