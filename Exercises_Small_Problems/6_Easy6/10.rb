def triangle(number)
  counter = 1
  space = number - 1
  while counter <= number
    puts (" " * space) + ("*" * counter)
    counter += 1
    space -= 1
  end
end

triangle(5)
triangle(9)
