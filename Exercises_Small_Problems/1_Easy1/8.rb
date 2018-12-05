def average(array)
  total = 0
  array.each do |nr|
    total += nr
  end
  total / array.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
