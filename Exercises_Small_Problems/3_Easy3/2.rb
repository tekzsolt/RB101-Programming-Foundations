def prompt(message)
  puts "==> #{message}"
end

puts "Enter the first number:"
num1 = gets.chomp.to_i

puts "Enter the second number:"
num2 = gets.chomp.to_i

results = []
results << num1 + num2
results << num1 - num2
results << num1 * num2
results << num1 / num2
results << num1 % num2
results << num1**num2

operations = ['+', '-', '*', '/', '%', '**']

count = 0
operations.each do |operation|
  prompt("#{num1} #{operation} #{num2} = #{results[count]}")
  count += 1
end
