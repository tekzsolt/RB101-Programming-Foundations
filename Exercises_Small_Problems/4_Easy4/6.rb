def running_total(nr_array)
  new_array = []
  sum = 0

  nr_array.each do |nr|
    new_array << sum + nr
    sum = new_array.last
  end

  new_array
end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []
