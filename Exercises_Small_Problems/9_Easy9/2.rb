def double_number?(number)
  str_nr = number.to_s
  return false if str_nr.size.odd?
  center = str_nr.size / 2
  first_part = str_nr[0..center - 1]
  second_part = str_nr[center..-1]
  first_part == second_part
end

def twice(number)
  return number if double_number?(number)
  number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
