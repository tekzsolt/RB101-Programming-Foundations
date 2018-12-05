def count_occurrences(collection)
  array = []
  collection.each do |item|
    occurrence = collection.count(item)
    puts "#{item} => #{occurrence}" unless array.include?(item)
    array << item
  end
end

vehicles = %w(car car truck car SUV truck motorcycle motorcycle car truck)

count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
