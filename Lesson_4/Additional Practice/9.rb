def titleize(text)
  new_text = ''
  text_array = text.split
  
  text_array.map do |word|
    word.capitalize!
    new_text << word + ' '
  end

  new_text
end

words = "the flintstones rock"
titleize(words)

# Launch School Solution

# words.split.map { |word| word.capitalize }.join(' ')
