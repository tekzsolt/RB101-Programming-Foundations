flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |item|
  item[0, 3] # My solution was: item = item[0] + item[1] + item[2]
end
