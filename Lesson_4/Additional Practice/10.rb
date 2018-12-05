munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# SOLUTION 1

age_group = 0

munsters.each do |key, value|
  if value["age"] < 18
    age_group = "kid"
  elsif value["age"] < 65
    age_group = "adult"
  else
    age_group = "senior"
  end
  value["age_group"] = age_group
end

# SOLUTION 2 ------------------------

# age_group = 0

# munsters.each do |key, value|
#   case value["age"]
#   when 1..17
#     age_group = "kid"
#   when 18..64
#     age_group = "adult"
#   else
#     age_group = "senior"
#   end

#   value["age_group"] = age_group
# end

# SOLUTION 3 ------------------------

# munsters.each do |key, value|
#   case value["age"]
#   when 1..17
#     value["age_group"] = "kid"
#   when 18..64
#     value["age_group"] = "adult"
#   else
#     value["age_group"] = "senior"
#   end
# end
