def build_lights(nr_of_switches)
  lights_arr = [[0, "OFF"]]
  nr = 1
  while nr <= nr_of_switches
    lights_arr << [nr, "OFF"]
    nr += 1
  end
  lights_arr
end

def toggle(lights_arr, n_times)
  lights_arr.each do |light|
    if lights_arr.index(light) % n_times == 0
      light[1] = light[1] == "OFF" ? "ON" : "OFF"
    end
  end
end

def lights(nr_of_switches)
  result = []
  lights_arr = build_lights(nr_of_switches)

  1.upto(nr_of_switches) do |n_times|
    toggle(lights_arr, n_times)
  end

  lights_arr.each do |light|
    result << light[0] if light[1] == "ON"
  end
  result.shift if result[0][0] == 0
  p result
end

lights(5)
lights(10)
