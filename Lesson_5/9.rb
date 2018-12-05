arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_array|
  sub_array.sort do |sub_arr1, sub_arr2|
    sub_arr2 <=> sub_arr1
  end
end
