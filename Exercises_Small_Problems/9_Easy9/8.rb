def sequence(count, num2)
  result = []

  result << num2 unless count == 0
  (count - 1).times do
    result << result.last + num2
  end

  result
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
