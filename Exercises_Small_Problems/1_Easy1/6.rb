def reverse_words(text)
  words = []
  text.split(' ').each do |item|
    words << if item.size >= 5
               item.reverse!
             else
               item
             end
  end
  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
