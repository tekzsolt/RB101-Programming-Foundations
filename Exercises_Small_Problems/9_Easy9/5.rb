def uppercase?(string)
  abc = [*'a'..'z']

  string.chars.each do |char|
    if abc.include?(char)
      return false
    end
  end

  true
end

# #LAUNCH SCHOOL SOLUTION
# def uppercase?(string)
#   string == string.upcase
# end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
