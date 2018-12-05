def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0 # purpose of number % dividend == 0 is to check if number divided by dividend has remainder or not
    dividend -= 1
  end
  divisors # returns the divisors array
end

# factors(-22)
# factors(0)
# factors (24)
