def reversed_number(number)
  output = ''
  nr_string = number.to_s.reverse

  nr_string.chars do |char|
    if output.empty? && char == '0'
      next
    else
      output << char
    end
  end

  output.to_i
end

# LAUNCH SCHOOL SOLUTION
# def reversed_number(number)
#   string = number.to_s
#   reversed_string = string.reverse
#   reversed_string.to_i
# end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
