def word_sizes(text)
  result = Hash.new(0) # returns 0 if key is not found

  word_size_counter = []
  text.split.each do |word|
    word_size_counter << word.size
  end

  word_size_counter.sort.each { |nr| result[nr] += 1 } # line 2 becomes important
  result
end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}
