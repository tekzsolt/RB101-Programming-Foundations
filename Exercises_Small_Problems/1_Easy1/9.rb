# SOLUTION 1
def sum(number)
  array = number.to_s.split('')
  total = 0
  array.each do |item|
    total += item.to_i
  end
  total
end

# SOLUTION 2
# def sum(number)
#   number.to_s.split('').map! { |x| x.to_i }.reduce(:+)
# end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
