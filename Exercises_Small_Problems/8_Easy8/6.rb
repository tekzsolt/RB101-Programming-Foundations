def fizzbuzz(num1, num2)
  numbers = [*num1..num2]
  result = []
  numbers.each do |number|
    result << if number % 3 == 0 && number % 5 == 0
                "FizzBuzz"
              elsif number % 3 == 0
                "Fizz"
              elsif number % 5 == 0
                "Buzz"
              else
                number
              end
  end
  p result.join(', ')
end

fizzbuzz(1, 15)
