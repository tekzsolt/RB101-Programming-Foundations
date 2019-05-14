# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. 

# Note that there is a Array#transpose method that does this -- you may not use it for this exercise. You also are not allowed
# to use the Matrix class from the standard library. Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchanged.

=begin
  Problem:
    - Input: array => Output: new array
    - Input array contains one or more inner_arrays which contain one or more integer items
    - Output should contain one or more inner_arrays which contain one or more integer items

  Examples:
    - see below

  Data Structures:
    - array of integers

  Algorithm:
    - create an array for result
    
    - find longest inner array
    - iteration: from zero up to longest inner array; use current iteration number as index
      - create an empty array for row
      - iterate through array (parameter) to access inner arrays
        - at each iteartion access the same indexed element and append it to row array if index exists
      - append row array to result
    - return result
=end

def transpose(array)
  result = []
  longest  = 0
  array.each { |inner_array| longest = inner_array.size if inner_array.size > longest }

  0.upto(longest - 1) do |idx|
    new_row = []
    array.each do |inner_array|
      new_row << inner_array[idx] unless inner_array[idx] == nil
    end
    result << new_row
  end

  result
end


# Examples

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]