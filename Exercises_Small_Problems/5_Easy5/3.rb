MINUTES_PER_DAY = 60 * 24

def before_midnight(string)
  hour = string[0] + string[1]
  hour = hour.to_i
  minutes = string[3] + string[4]
  minutes = minutes.to_i

  time_in_minutes = (hour * 60) + minutes
  output = MINUTES_PER_DAY - time_in_minutes
  if output == 1440
    0
  else
    output
  end
end

def after_midnight(string)
  hour = string[0] + string[1]
  hour = hour.to_i
  minutes = string[3] + string[4]
  minutes = minutes.to_i

  time_in_minutes = (hour * 60) + minutes
  if time_in_minutes == 1440
    0
  else
    time_in_minutes
  end
end

# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0
