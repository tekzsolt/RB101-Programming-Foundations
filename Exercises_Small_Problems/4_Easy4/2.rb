def century(number)
  divided_number = number.to_f / 100

  century = if divided_number.to_s[-1].to_i == 0
              divided_number
            else
              divided_number + 1
            end

  century = century.to_i.to_s

  if (century[-1] == '1' && century[-2] == '1') ||
     (century[-1] == '2' && century[-2] == '1') ||
     (century[-1] == '3' && century[-2] == '1')

    century + 'th'
  elsif century[-1] == '1'
    century + 'st'
  elsif century[-1] == '2'
    century + 'nd'
  elsif century[-1] == '3'
    century + 'rd'
  else
    century + 'th'
  end
end

# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'
