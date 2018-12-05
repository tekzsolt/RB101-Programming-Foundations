def cleanup(text)
  letters = [*('a'..'z')]
  capital_letters = [*('A'..'Z')]
  permitted_chars = letters.concat(capital_letters)
  permitted_chars << " "

  result = ""
  text.each_char do |char|
    result << if permitted_chars.include?(char)
                char
              else
                " "
              end
  end

  result.squeeze
end

# LAUNCH SCHOOL SOLUTION
# def cleanup(text)
#   text.gsub(/[^a-z]/i, ' ').squeeze(' ')
# end

# p cleanup("---what's my +*& line?") == ' what s my line '
