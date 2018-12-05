def palindrome?(text)
  text == text.reverse
end

def real_palindrome?(text)
  abc = [*('a'..'z')]
  array = text.downcase.chars
  array.each do |item|
    array.delete(item) if !abc.include?(item)
  end
  string = array.join
  palindrome?(string)
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
