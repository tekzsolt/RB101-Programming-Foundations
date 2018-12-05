flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = flintstones.each_with_object({ }) do |item, hash|
  hash[item] = flintstones.index(item)
end
