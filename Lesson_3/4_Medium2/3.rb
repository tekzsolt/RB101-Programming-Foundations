def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga" # reassignment will make a_string_param point to another object (therefore no modification on the passed in object)
  an_array_param << "rutabaga" # modification in the passed in object
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
