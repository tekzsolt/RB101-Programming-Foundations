def merge(array1, array2)
  output = []
  array1.each do |element|
    output << element
  end

  array2.each do |element|
    output << element unless output.include?(element)
  end

  output
end

# LAUNCH SCHOOL SOLUTION
# def merge(array_1, array_2)
#   array_1 | array_2
# end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
