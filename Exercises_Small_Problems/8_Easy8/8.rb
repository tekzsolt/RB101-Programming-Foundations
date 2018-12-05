def double_consonants(text)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  abc = [*'a'..'z'] + [*'A'..'Z']
  output = ''
  text.chars do |char|
    if abc.include?(char) && !vowels.include?(char)
      output << char << char
    else
      output << char
    end
  end
  output
end

# SOLUTION 2
# def double_consonants(text)
#   consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
#   output = ''
#   text.chars do |char|
#     if consonants.include?(char.downcase)
#       output << char << char
#     else
#       output << char
#     end
#   end
#   output
# end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
