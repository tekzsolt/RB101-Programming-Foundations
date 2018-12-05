def include?(array, number)
  array.each do |element|
    if element.nil? && number.nil?
      return true
    elsif element == number
      return true
    end
  end
  false
end

# LS SOLUTION 1
# def include?(array, value)
#   !!array.find_index(value)
# end

# LS SOLUTION 2
# def include?(array, value)
#   array.each { |element| return true if value == element }
#   false
# end

# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false
