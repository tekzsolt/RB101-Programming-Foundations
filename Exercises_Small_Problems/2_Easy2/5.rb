puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  name.chomp!('!')
  puts "HELLO #{name.upcase}. WHY ARE YOU SCREAMING?"
else
  puts "Hello #{name}."
end
