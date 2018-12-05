def minilang(string)
  register = [0]
  stack = []
  commands = string.split(' ')

  commands.each do |command|
    if command.to_i.integer?
      register[0] = command.to_i
    elsif command == "PUSH"
      stack << register[0]
    elsif command == "ADD"
      number = stack.pop
      register[0] += number
    elsif command == "SUB"
      number = stack.pop
      register[0] -= number
    elsif command == "MULT"
      number = stack.pop
      register[0] *= number
    elsif command == "DIV"
      number = stack.pop
      register[0] /= number
    elsif command == "MOD"
      number = stack.pop
      register[0] = register[0] % number # double check
    elsif command == "POP"
      register = stack.pop
    elsif command == "PRINT"
      puts register[0]
    end
  end
end

minilang('5 PUSH 3 MULT PRINT')
