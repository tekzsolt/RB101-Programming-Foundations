def count_abc_word(word)
  letters = [*('a'..'z')]
  capital_letters = [*('A'..'Z')]
  permitted_chars = letters.concat(capital_letters)

  result = 0
  counter = 0
  while counter < word.size
    result += 1 if permitted_chars.include?(word[counter])
    counter += 1
  end
  result
end

def word_sizes(text)
  result = Hash.new(0) # returns 0 if key is not found

  word_size_counter = []
  text.split.each do |word|
    word_size_counter << count_abc_word(word)
  end

  word_size_counter.sort.each { |nr| result[nr] += 1 } # line 2 becomes important here
  result
end

# LAUNCH SCHOOL SOLUTION
# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     clean_word = word.delete('^A-Za-z')
#     counts[clean_word.size] += 1
#   end
#   counts
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}
