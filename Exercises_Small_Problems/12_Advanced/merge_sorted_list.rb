# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

=begin 
	Problem:
		- Input: 2 arrays => Output: 1 new array (sorted)
		- Return a sorted array which contains the elements of both input arrays (parameters)
		- Can't use sort method on result array, must build by one element at a time
		- Handle empty array

	Examples:
		- see below

	Data Structures:
		- array of integers

	  Algorithm:
    - create mixed array = array 1 plus array 2
    
    - sort the mixed array: compare current number with next number
      - loop until no swap happens between items
        - iteration: one less time than mixed_array size
          - check if current number is smaller or equal to next number
            - if yes: no swap
            - go to check next number and the following one (increment)
          - if it's bigger: swap happens
            - swap the two numbers
            - go to next iteration (increment)

    - return mixed array
=end

def merge(array1, array2)
  mixed_array = array1 + array2
  
  loop do
    swap = false
    current_number = 0
    next_number = 1
    
    (mixed_array.size - 1).times do
      if mixed_array[current_number] <= mixed_array[next_number]
        current_number += 1
        next_number += 1
        next
      else
        mixed_array[current_number], mixed_array[next_number] = mixed_array[next_number], mixed_array[current_number]
        current_number += 1
        next_number += 1
        swap = true
      end
    end
    
    break if swap == false
  end
  
  mixed_array
end

# Examples:
p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]