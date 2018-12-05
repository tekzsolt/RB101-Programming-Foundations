def staggered_case(text)
  output = ''
  abc = [*'A'..'Z'] + [*'a'..'z']
  chars = text.chars
  counter = 1

  chars.each do |char|
    output << if counter.odd? && abc.include?(char)
                char.capitalize
              elsif counter.odd? && !abc.include?(char)
                char
              elsif counter.even? && abc.include?(char)
                char.downcase
              else
                char
              end
    counter += 1
  end

  output
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
