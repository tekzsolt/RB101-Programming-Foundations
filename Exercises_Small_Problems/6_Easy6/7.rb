def halvsies(array)
  center = (array.size / 2.0).ceil
  arr1 = array[0, center]
  arr2 = array[center, (array.size - center)]
  p [arr1, arr2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
