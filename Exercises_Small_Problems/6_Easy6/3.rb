def fibonacci(a, b)
  a + b
end

def find_fibonacci_index_by_length(length)
  result = [0, 1]
  first_number = 0
  second_number = 1

  loop do
    result << fibonacci(first_number, second_number)
    first_number = second_number
    second_number = result.last
    break if result.last.to_s.size == length
  end
  result.index(result.last)
end

# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847
