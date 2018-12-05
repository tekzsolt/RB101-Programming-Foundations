def digit_list(numbers)
  array = []
  numbers = numbers.to_s
  count = 0
  while count < numbers.size
    array << numbers[count].to_i
    count += 1
  end
  array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
