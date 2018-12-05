def swapcase(text)
  uppercase_abc = [*'A'..'Z']
  lowercase_abc = [*'a'..'z']
  output = ''

  text.chars do |char|
    if uppercase_abc.include?(char)
      index = uppercase_abc.index(char)
      output << lowercase_abc[index]
    elsif lowercase_abc.include?(char)
      index = lowercase_abc.index(char)
      output << uppercase_abc[index]
    else
      output << char
    end
  end

  output
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
