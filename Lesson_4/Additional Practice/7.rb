statement = "The Flintstones Rock"
# => { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

char_array = statement.chars
char_array.delete_if { |item| item == " " }

result = []
count = 0

char_array.each do |letter|
  nr = statement.count(letter)
  result.push(char_array[count, 1] << nr) # without count this line would be result.push(char_array[char_array.index(letter), 1] << nr)
  count += 1
end

result.to_h

# Launch School Solution

# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   result[letter] = letter_frequency if letter_frequency > 0
# end
