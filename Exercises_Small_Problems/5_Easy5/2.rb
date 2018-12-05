MINUTES_PER_DAY = 60 * 24

def time_of_day(number)
  hours = (number % MINUTES_PER_DAY) / 60
  minutes = number % 60
  hours = "0" + hours.to_s if hours < 10
  minutes = "0" + minutes.to_s if minutes < 10
  "#{hours}:#{minutes}"
end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"
