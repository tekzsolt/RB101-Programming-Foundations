def print_in_box(text)
  lines = "+" + "-" * (text.size + 2) + "+"
  pipes = "|" + " " * (text.size + 2) + "|"
  center_row = "|" + " " + text.to_s + " " + "|"

  puts lines.to_s
  puts pipes.to_s
  puts center_row.to_s
  puts pipes.to_s
  puts lines.to_s
end

print_in_box('To boldly go where no one has gone before.')
print_in_box("Hi")
print_in_box("T")
print_in_box("")
