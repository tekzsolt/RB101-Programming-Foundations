def buy_fruit(main_array)
  result = []
  main_array.each do |array|
    array.last.times { result << array.first }
  end
  result
end

# LAUNCH SCHOOL SOLUTION
# fruit * quantity => "applesapplesapples"
# [fruit] * quantity => ["apples", "apples", "apples"]

# def buy_fruit(list)
#   list.map { |fruit, quantity| [fruit] * quantity }.flatten
# end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas", "bananas"]
