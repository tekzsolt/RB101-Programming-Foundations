def center_of(text)
  chars = []
  text.chars do |char|
    chars << char
  end

  if chars.size.odd?
    chars[(chars.size / 2)]
  else
    chars[(chars.size / 2) - 1] + chars[(chars.size / 2)]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
