def different_digits?(nr)
  digits = nr.to_s.chars
  digits.each do |digit|
    if digits.count(digit) > 1
      return false
    end
  end
  true
end

def featured(number)
  count = 0
  loop do
    nr = 7 * count
    return nr if nr.odd? && different_digits?(nr) && nr > number
    count += 1
    break if number >= 9_876_543_210
  end
  puts "There is no possible number that fulfills those requirements."
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
