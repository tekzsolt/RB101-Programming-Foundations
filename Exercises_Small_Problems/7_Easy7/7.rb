def show_multiplicative_average(nums)
  result = 1.00
  nums.each do |number|
    result *= number
  end
  average = result / nums.size
  puts "The result is " + format('%.3f', average)
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
