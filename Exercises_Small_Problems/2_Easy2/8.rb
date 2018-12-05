num1 = nil
calculation = nil
MESSAGE_INVALID = 'Invalid answer!'

loop do
  puts "Please enter an integer greater than 0:"
  num1 = gets.chomp.to_i
  break if num1 > 0
  puts MESSAGE_INVALID
end

loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  calculation = gets.chomp.downcase
  break if calculation == 's' || calculation == 'p'
  puts MESSAGE_INVALID
end

sum = 0
product = 1

(1..num1).each do |number|
  sum += number
  product *= number
end

if calculation == 's'
  puts "The sum of the integers between 1 and #{num1} is #{sum}."
elsif calculation == 'p'
  puts "The product of the integers between 1 and #{num1} is #{product}."
end
