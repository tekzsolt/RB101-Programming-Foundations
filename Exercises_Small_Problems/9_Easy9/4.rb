# def sequence(number)
#   result = []
#   current_nr = 1
#   number.times do
#     result << current_nr
#     current_nr += 1
#   end
#   result
# end
#
# SOLUTION 2
def sequence(number)
  [1] if number == 1
  [*1..number]
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
