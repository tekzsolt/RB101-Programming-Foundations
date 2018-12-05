# Solution 1

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.length != 4
    false
  else
    while dot_separated_words.size > 0
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word) # is_an_ip_number? it's a method provided by the exercises (will throw an error here)
    end
    true
  end
end

# Solution 2
#
# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   return false unless dot_separated_words.size == 4
#
#   while dot_separated_words.size > 0
#     word = dot_separated_words.pop
#     return false unless is_an_ip_number?(word) # is_an_ip_number? it's a method provided by the exercises (will throw an error here)
#   end
#
#   true
# end

dot_separated_ip_address?("10.4.5.11")
