puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
limit = gets.chomp.to_i

current_year = Time.new.year
retirement_year = (limit - age) + current_year
difference = retirement_year - current_year

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{difference} years of work to go!"
