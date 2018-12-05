def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3) / 3

  case average
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(10, 20, 30) == "F"
