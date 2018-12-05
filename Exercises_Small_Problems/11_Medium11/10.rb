def sum_square_difference(number)
  num_array = []
  1.upto(number) { |nr| num_array << nr }
  sum_square = num_array.sum**2
  squares_sum = num_array.map { |nr| nr**2 }.sum
  sum_square - squares_sum
end

p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
