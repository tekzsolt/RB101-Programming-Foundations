CHOOSE = ["Player", "Computer"]

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # lines
                [[1, 5, 9], [3, 5, 7]] # diagonals

current_player = ""
first_game = true
score_arr = [0, 0]

def prompt(msg)
  puts "=> #{msg}"
end

def who_goes_first
  user_choice = ""
  loop do
    prompt("Please choose who goes first: Press 1 for Player or 2 for Computer!")
    user_choice = gets.chomp.to_i
    if user_choice == 1 || user_choice == 2
      break
    else
      puts "Please provide a valid choice!"
    end
  end

  if CHOOSE[user_choice - 1] == CHOOSE[0]
    CHOOSE[0]
  else
    CHOOSE[1]
  end
end

def display_board(brd)
  system('cls')
  puts "Player marker: #{PLAYER_MARKER} vs. Computer marker: #{COMPUTER_MARKER}"
  puts ""
  puts "     "         + "|" + "     " + "|"         + "     "
  puts "     "         + "|" + "     " + "|"         + "     "
  puts "  #{brd[1]}  " + "|" + "  #{brd[2]}  " + "|" + "   #{brd[3]}  "
  puts "     "         + "|" + "     " + "|"         + "     "
  puts "     "         + "|" + "     " + "|"         + "     "
  puts "-----"         + "+" + "-----" + "+"         + "-----"
  puts "     "         + "|" + "     " + "|"         + "     "
  puts "     "         + "|" + "     " + "|"         + "     "
  puts "  #{brd[4]}  " + "|" + "  #{brd[5]}  " + "|" + "   #{brd[6]}  "
  puts "     "         + "|" + "     " + "|"         + "     "
  puts "     "         + "|" + "     " + "|"         + "     "
  puts "-----"         + "+" + "-----" + "+"         + "-----"
  puts "     "         + "|" + "     " + "|"         + "     "
  puts "     "         + "|" + "     " + "|"         + "     "
  puts "  #{brd[7]}  " + "|" + "  #{brd[8]}  " + "|" + "   #{brd[9]}  "
  puts "     "         + "|" + "     " + "|"         + "     "
  puts "     "         + "|" + "     " + "|"         + "     "
  puts ""
end

def marking
  new_hash = {}
  (1..9).each do |num|
    new_hash[num] = " "
  end
  new_hash
end

def space_available(brd)
  brd.keys.select { |key| brd[key] == " " } # returns array of selected hash keys
end

def joinor(array, sep=',', word='or')
  if array.size == 0
    ""
  elsif array.size == 1
    array.first
  elsif array.size == 2
    array.join(" " + word + " ")
  else
    message = array.join(sep + " ")
    message[-1] = "#{word} #{array.last}"
    message
  end
end

def player_choice(brd)
  player_answer = ""
  loop do
    prompt("Please mark your square. Availabe squares: #{joinor(space_available(brd))}.")
    player_answer = gets.chomp
    break if space_available(brd).include?(player_answer.to_i)
    prompt("That's not a valid choice!")
  end
  player_answer.to_i
end

def comp_smart_mark(brd, marker)
  WINNING_LINES.each do |sub_array|
    if brd.values_at(*sub_array).count(marker) == 2
      return brd.select { |k, v| sub_array.include?(k) && v == INITIAL_MARKER }.keys.first
    else
      nil
    end
  end
end

def comp_mark_center(brd)
  5 if brd[5] == INITIAL_MARKER
end

def computer_choice(brd)
  if space_available(brd).include?(comp_smart_mark(brd, COMPUTER_MARKER))
    comp_smart_mark(brd, COMPUTER_MARKER)
  elsif space_available(brd).include?(comp_smart_mark(brd, PLAYER_MARKER))
    comp_smart_mark(brd, PLAYER_MARKER)
  elsif space_available(brd).include?(comp_mark_center(brd))
    comp_mark_center(brd)
  else
    space_available(brd).sample
  end
end

def win?(brd)
  WINNING_LINES.each do |sub_array|
    if brd.values_at(*sub_array).count(PLAYER_MARKER) == 3
      return PLAYER_MARKER
    elsif brd.values_at(*sub_array).count(COMPUTER_MARKER) == 3
      return COMPUTER_MARKER
    end
  end
  false
end

def tie?(brd)
  space_available(brd).empty?
end

def limit_reached?(score)
  score[0] == 5 || score[1] == 5
end

def who_reached_limit?(score)
  if score[0] == 5
    prompt("Player won 5 times!")
  else
    prompt("Computer won 5 times!")
  end
end

def update_score!(score, num1, num2)
  score[0] += num1
  score[1] += num2
end

def show_score(score)
  prompt("Player score: #{score[0]} | Computer score: #{score[1]}")
end

def game_over?(brd, score)
  if win?(brd) == PLAYER_MARKER
    update_score!(score, 1, 0)
    puts "Player won!"
    true
  elsif win?(brd) == COMPUTER_MARKER
    update_score!(score, 0, 1)
    puts "Computer won!"
    true
  elsif tie?(brd)
    puts "It's a tie!"
    true
  else
    false
  end
end

def alternate_player(cur_player)
  if cur_player == "Player"
    "Computer"
  else
    "Player"
  end
end

def place_piece!(brd, cur_player)
  if cur_player == "Player"
    brd[player_choice(brd)] = PLAYER_MARKER
  else
    brd[computer_choice(brd)] = COMPUTER_MARKER
  end
end

def gameplay(brd, score)
  current_player = who_goes_first()
  loop do
    display_board(brd)

    place_piece!(brd, current_player)
    current_player = alternate_player(current_player)
    display_board(brd)
    if game_over?(brd, score)
      show_score(score)
      unless limit_reached?(score)
        brd = marking()
        gameplay(brd, score)
      else
        who_reached_limit?(score)
      end
    end

    break if limit_reached?(score)

    place_piece!(brd, current_player)
    current_player = alternate_player(current_player)
    display_board(brd)
    if game_over?(brd, score)
      show_score(score)
      unless limit_reached?(score)
        brd = marking()
        gameplay(brd, score)
      else
        who_reached_limit?(score)
      end
    end

    break if limit_reached?(score)
  end
end

loop do
  if first_game
    prompt("Hi, would you like to play Tic Tac Toe vs Computer? (y/n)")
    user_answer = gets.chomp
    first_game = false
  else
    prompt("Rematch ? (y/n)")
    user_answer = gets.chomp
  end

  if user_answer.downcase.start_with?("y")
    score = [0, 0]
    board = marking()
    gameplay(board, score_arr)
  else
    puts "Good bye!"
    break
  end
end
