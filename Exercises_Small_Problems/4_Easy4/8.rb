DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  if string[0] == "-"
    min_or_plus = string[0]
    string.delete!(string[0])
  elsif string[0] == "+"
    min_or_plus = string[0]
    string.delete!(string[0])
  end

  number = string_to_integer(string)

  if min_or_plus == "-"
    0 - number
  else
    number
  end
end

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100
