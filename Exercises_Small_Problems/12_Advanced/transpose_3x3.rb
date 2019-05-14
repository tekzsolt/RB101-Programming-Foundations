# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix. 

# Note that there is a Array#transpose method that does this -- you may not use it for this exercise. You also are not allowed
# to use the Matrix class from the standard library. Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix and leave the original matrix unchanged.

=begin
  Problem:
    - Input: array => Output: new array
    - Input array contains inner arrays of integers
    - Output should contain inner arrays of integers too
      - each inner array should contain integers which have common index in the inner arrays of input array(parameter)

  Examples:
    - see below

  Data Structures:
    - array of integers

  Algorithm:
    - create result array
    
    - iteration: at each iteration use current itartion number as index
      - create an empty array for new rows (store items temporarily)
      - iterate over array (parameter) to access inner arrays
        - at each iteration access element with same index in each inner array
        - append the item to the row array
      - append row to result

    - return result array
=end

def transpose(array)
  result = []

  0.upto(array.size - 1) do |idx|
    new_row = []
    array.each do |inner_array|
      new_row << inner_array[idx]
    end
    result << new_row
  end
  
  p result
end


# Examples

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]