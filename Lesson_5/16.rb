def generate_uuid
  hexadecimals = [*'0'..'9'] + [*'a'..'f']
  sections =[8, 4, 4, 4, 12]
  uuid = ""

  sections.each do |number|
    number.times do
      uuid += hexadecimals.sample
    end
    uuid += '-' if uuid.size < sections.sum + 4
  end

  uuid
end

puts generate_uuid