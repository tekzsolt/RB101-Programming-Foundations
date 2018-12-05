def interleave(first_array, second_array)
  combined_array = []
  counter = 0
  while counter < first_array.size
    combined_array << first_array[counter]
    combined_array << second_array[counter]
    counter += 1
  end
  combined_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
