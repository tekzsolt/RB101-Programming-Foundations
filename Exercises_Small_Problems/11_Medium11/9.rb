# array[0], array[3] = array[3], array[0]
def bubble_sort!(array)
  n = array.size

  loop do
    swapped = false
    1.upto(n - 1) do |index|
      if array[index - 1] > array[index]
        array[index - 1], array[index] = array[index], array[index - 1]
        swapped = true
      end
    end
    break unless swapped
  end

  array
end

# array = [5, 3]
# bubble_sort!(array)
# array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
