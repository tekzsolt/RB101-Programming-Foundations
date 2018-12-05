def stringy(nr)
  output = ''
  count = 1
  nr.times do
    output << 1.to_s if count.odd?
    output << 0.to_s if count.even?
    count += 1
  end
  output
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
