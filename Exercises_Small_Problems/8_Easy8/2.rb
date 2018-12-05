puts "=> Enter a noun:"
noun = gets.chomp

puts "=> Enter a verb:"
verb = gets.chomp

puts "=> Enter an adjective:"
adjective = gets.chomp

puts "=> Enter an adverb:"
adverb = gets.chomp

number = rand(4)
if number == 1
  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
elsif number == 2
  puts "Did the #{adjective} #{noun} #{verb} #{adverb} to the shop to buy milk?"
else
  puts "Do you #{adverb} #{verb} your #{adjective} #{noun}? That's amazing!"
end
