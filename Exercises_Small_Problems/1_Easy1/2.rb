def is_odd?(nr)
  (nr + nr + nr).odd? # (nr + nr + nr) % == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# LAUNCH SCHOOL SOLUTION
# def is_odd?(number)
#   number % 2 == 1
# end
