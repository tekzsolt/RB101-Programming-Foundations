def staggered_case(text)
  output = ''
  abc = [*'A'..'Z'] + [*'a'..'z']
  chars = text.chars
  need_capital = true

  chars.each do |char|
    if need_capital && abc.include?(char)
      output << char.capitalize
      need_capital = false
    elsif !abc.include?(char)
      output << char
    elsif abc.include?(char) && need_capital == false
      output << char.downcase
      need_capital = true
    elsif abc.include?(char) && need_capital
      output << char.capitalize
      need_capital = false
    end
  end
  output
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
