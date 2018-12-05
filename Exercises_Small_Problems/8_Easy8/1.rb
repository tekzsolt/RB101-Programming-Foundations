def sum_of_sums(num_array)
  index = 0
  total = 0
  temp_result = 0

  loop do
    break if index == num_array.size
    total += num_array[index] + temp_result
    temp_result += num_array[index]
    index += 1
  end

  total
end

# LAUNCH SCHOOL SOLUTION
# def sum_of_sums(numbers)
#   sum_total = 0
#   1.upto(numbers.size) do |count|
#     sum_total += numbers.slice(0, count).reduce(:+)
#   end
#   sum_total
# end

p sum_of_sums([3, 5, 2]) == 3 + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == 1 + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
