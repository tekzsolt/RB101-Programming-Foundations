def word_cap(text)
  capitalized_words = text.split(' ').map do |word|
    word.capitalize
  end
  capitalized_words.join(' ')
end

# LAUNCH SCHOOL SOLUTION
# def word_cap(words)
#   words.split.map(&:capitalize).join(' ') # shorthand solution for { |item| item.method_name }
# end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
