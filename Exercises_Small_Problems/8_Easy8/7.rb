def repeater(text)
  output = ''
  text.chars do |char|
    output << char
    output << char
  end
  output
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
