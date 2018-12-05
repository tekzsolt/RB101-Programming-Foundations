def greetings(name_arr, details_hsh)
  name = name_arr.join(' ')
  puts "Hello, #{name}! Nice to have a
        #{details_hsh[:title]} #{details_hsh[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
