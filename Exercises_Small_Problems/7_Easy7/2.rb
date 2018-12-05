def letter_case_count(text)
  letter_counter = { lowercase: 0, uppercase: 0, neither: 0 }
  lowercase_abc = [*'a'..'z']
  uppercase_abc = [*'A'..'Z']

  text.chars do |char|
    if !lowercase_abc.include?(char) && !uppercase_abc.include?(char)
      letter_counter[:neither] += 1
    elsif lowercase_abc.include?(char)
      letter_counter[:lowercase] += 1
    elsif uppercase_abc.include?(char)
      letter_counter[:uppercase] += 1
    end
  end
  letter_counter
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
