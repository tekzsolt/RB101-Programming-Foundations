# LAUNCH SCHOOL SOLUTION
# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.reject! { |word| negative?(word) }
#   words.join(' ')
# end

def neutralize(sentence)
  words = sentence.split(' ')
  output = []
  words.each do |word|
    output << word if !negative?(word)
  end

  output.join(' ')
end

def negative?(word)
  ['dull', 'boring', 'annoying', 'chaotic'].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
