ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
sum = 0

ages.each do |_, value|
  sum += value
end

p sum

# Second solution

# array = ages.values
# array.each do |item|
#   sum += item
# end

# p sum
