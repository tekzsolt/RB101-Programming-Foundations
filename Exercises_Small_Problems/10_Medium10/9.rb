def fibonacci(number)
  return 1 if number <= 2
  fib1 = 1
  fib2 = 1
  total = 0
  (number - 2).times do
    total = fib1 + fib2
    fib1 = fib2
    fib2 = total
  end
  total
end

# LAUNCH SCHOOL SOLUTION
# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end
#
#   last
# end

p fibonacci(5) == 5
p fibonacci(6) == 8
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
