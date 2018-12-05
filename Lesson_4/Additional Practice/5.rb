flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |item| item.start_with?("Be") }
