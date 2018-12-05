puts 'Please write word or multiple words:'
input = gets.chomp

nr_of_chars = input.delete(' ').size
puts "There are #{nr_of_chars} characters in \"#{input}\"."
