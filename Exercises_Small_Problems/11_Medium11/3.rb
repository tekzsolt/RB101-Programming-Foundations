def letter_percentages(string)
  small_letters = [*'a'..'z']
  capital_letters = [*'A'..'Z']
  result = { lowercase: 0,
             uppercase: 0,
             neither: 0 }

  string.chars do |char|
    if small_letters.include?(char)
      result[:lowercase] += 1
    elsif capital_letters.include?(char)
      result[:uppercase] += 1
    else
      result[:neither] += 1
    end
  end

  str_length = string.size
  result[:lowercase] = (result[:lowercase] * 100) / str_length.to_f
  result[:uppercase] = (result[:uppercase] * 100) / str_length.to_f
  result[:neither] = (result[:neither] * 100) / str_length.to_f

  result
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
