def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort

  if sides.any? { |i| i == 0 } || sides[0] + sides[1] < sides.last
    :invalid
  elsif side1 == side2 && side2 == side3
    :equilateral
  elsif side1 == side2 && side3 != side1 || side1 == side3 && side2 != side1 || side2 == side3 && side1 != side2
    :isosceles
  elsif (side1 != side2 && side1 != side3) && (side2 != side3)
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
