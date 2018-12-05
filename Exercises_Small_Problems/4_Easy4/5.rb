def multisum(number)
  nr_array = []
  (0..number).step(3) { |nr| nr_array << nr }
  (0..number).step(5) { |nr| nr_array << nr unless nr_array.include?(nr) }

  sum = 0
  nr_array.each do |nr|
    sum += nr
  end
  sum
end

# multisum(20) == 98
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
