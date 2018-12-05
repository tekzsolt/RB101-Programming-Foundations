def multiply_list(arr1, arr2)
  result = []
  indexes = [*0...arr1.size]

  indexes.each do |index|
    result << arr1[index] * arr2[index]
  end

  result
end

# LAUNCH SCHOOL SOLUTION
# def multiply_list(list_1, list_2)
#   products = []
#   list_1.each_with_index do |item, index|
#     products << item * list_2[index]
#   end
#   products
# end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
