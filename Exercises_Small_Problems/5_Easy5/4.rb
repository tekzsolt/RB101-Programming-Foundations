def swap(word_string)
  word_array = word_string.split.each do |word|
    first_char = word[0]
    last_char = word[-1]
    word[0] = last_char
    word[-1] = first_char
  end
  word_array.join(' ')
end

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'
