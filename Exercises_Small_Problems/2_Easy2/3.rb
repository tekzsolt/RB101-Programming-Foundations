puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
percentage = gets.chomp.to_f

tip = (bill / 100) * percentage
total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"
