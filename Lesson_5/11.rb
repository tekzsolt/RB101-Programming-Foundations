arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |inner_array|
  inner_array.select { |nr| nr % 3 == 0 }
end
