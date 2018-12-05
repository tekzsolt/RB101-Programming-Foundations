def max_rotation(number)
  number = number.to_s.chars
  index = 0

  (number.size - 1).times do
    temp = number[index]
    number.delete_at(index)
    number << temp
    index += 1
  end
  number.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
