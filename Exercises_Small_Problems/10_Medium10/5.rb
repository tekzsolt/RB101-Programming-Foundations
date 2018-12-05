def add_stars(stars)
  center = stars.size / 2
  left_index = center
  right_index = center
  while stars.count("*") < stars.size
    stars[center] = "*" unless stars[center] == "*"
    display_line(stars)
    left_index -= 1
    right_index += 1
    stars[left_index] = "*"
    stars[right_index] = "*"
  end
  display_line(stars)
end

def remove_stars(stars)
  left_index = 0
  right_index = -1
  while stars.count("*") != 1
    stars[left_index] = " "
    stars[right_index] = " "
    left_index += 1
    right_index -= 1
    display_line(stars)
  end
end

def display_line(stars)
  puts stars.join
end

def diamond(number)
  stars = [" "] * number
  add_stars(stars)
  remove_stars(stars)
end

diamond(9)
