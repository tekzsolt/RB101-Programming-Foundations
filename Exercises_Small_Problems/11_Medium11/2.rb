def block_word?(word)
  available_blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'],
                      ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'],
                      ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'],
                      ['Z', 'M']]
  used_blocks = []

  chars = word.upcase.chars
  chars.each do |char|
    available_blocks.each do |block|
      if !available_blocks.flatten.include?(char) # block already used
        return false
      elsif block.include?(char)
        used_blocks << available_blocks.delete(block)
        break
      end
    end
  end
  true
end

# LAUNCH SCHOOL SOLUTION
# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze
#
# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
