#Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method.
#The smallest such star you need to handle is a 7x7 grid.

=begin 
	Problem: 
		- display an 8-pointed star
		- grid size is n*n where n is odd integer
		- smallest grid is 7*7

		Rules:
			- central row has n number of stars
			- every other row has 3 stars
			- each row has spaces on left side and between stars
				- top and bottom row -> has no left side spaces
				- top and bottom row -> number of spaces between stars equals to n / 2 - 3(stars)
			- spaces (left side & between) is adjusting depending if the row is above or below central row
				- above: left spaces increasing by 1, spaces between stars are decreasing by 1
				- below: left spaces decreasing by 1, spaces between stars are increasing by 1

	Examples:
		- see below

	Data Structure:
		- string: containing spaces and stars

	  Algorithm:
    - padding number is zero
    - space number is (n - 3 / 2)
    
    - display rows (iteration)
      - create row: left padding + star + spaces + star + spaces + star
      
      - if upcoming row is above central row 
        - display row
        - adjust number of left padding and spaces (unless it's row above central row)
      - if upcoming row is central row
        - display central row
      - if upcoming row below central row
        - display row
        - adjust number of left padding and spaces
=end

def star(n)
  padding_number = 0
  space_number = (n - 3) / 2
  
  1.upto(n) do |row_number|
    central_row_number = (n / 2) + 1
    left_padding = ' ' * padding_number
    spaces = ' ' * space_number
    row = left_padding + (('*' + spaces) * 2) + '*'
    
    if row_number < central_row_number
      puts row
      next if row_number == central_row_number - 1
      padding_number += 1 
      space_number -= 1
    elsif row_number == central_row_number
      puts '*' * n
    else
      puts row
      padding_number -= 1
      space_number += 1
    end
  end
end

#Examples:

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

# star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

