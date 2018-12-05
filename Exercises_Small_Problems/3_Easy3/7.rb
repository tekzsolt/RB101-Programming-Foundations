def oddities(array)
  array.select do |item|
    item if array.index(item).even?
  end
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
