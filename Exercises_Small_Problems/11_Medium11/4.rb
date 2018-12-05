def balanced?(string)
  opening = "("
  closing = ")"
  nr_of_opening = string.count(opening)
  nr_of_closing = string.count(closing)
  sum = nr_of_opening + nr_of_closing

  if sum.odd?
    return false
  elsif nr_of_opening != nr_of_closing
    return false
  elsif nr_of_opening == 0 && nr_of_closing == 0
    return true
  end

  opening_parentheses = []
  closing_parentheses = []
  characters = string.chars

  counter = 0
  loop do
    break if counter > characters.size
    if characters[counter] == opening
      opening_parentheses << counter
    elsif characters[counter] == closing
      closing_parentheses << counter
    end
    counter += 1
  end

  return false if opening_parentheses.empty? || closing_parentheses.empty?
  counter = 0
  loop do
    return false if opening_parentheses[counter] > closing_parentheses[counter]
    counter += 1
    break if counter == opening_parentheses.size
  end

  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
