def dms(degrees_nr)
  total_secs = (degrees_nr * 3600).round

  first_array = total_secs.divmod(3600)
  degrees = first_array[0]
  seconds_left = first_array[1]

  second_array = seconds_left.divmod(60)
  minutes = second_array[0]
  seconds = second_array[1]

  format(%(#{degrees}°%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
