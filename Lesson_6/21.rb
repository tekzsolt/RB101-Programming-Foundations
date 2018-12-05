def twenty_one
  player_cards = {}
  dealer_cards = {}

  def prompt(msg)
    p "=> #{msg}"
  end

  def deck_hsh_init
    deck = {
            hearts: {},
            diamonds: {},
            clubs: {},
            spades: {}
            }
    (2..10).each do |nr|
      deck.each_key do |suit|
        deck[suit][nr] = nr
        if deck[suit].size == 9
          deck[suit]["Jack"] = 10
          deck[suit]["Queen"] = 10
          deck[suit]["King"] = 10
          deck[suit]["Ace"] = [1, 11]
        end
      end
    end
    deck
  end

  deck = deck_hsh_init

  def deal_cards!(deck, nr, receiver)
    nr.times do
      loop do
        suit = deck.keys.sample
        if !deck[suit].empty?
          suit_card = deck[suit].keys.sample
          deck[suit].each do |key, value|
            if key == suit_card
              receiver[suit] = {} unless receiver[suit] # modifies the receiver hash!
              receiver[suit][key] = value # modifies the receiver hash!
            end
          end

          deck[suit].delete(suit_card) # modifies the deck hash!
          break
        end
      end
    end
  end

  def calculate_ace(total)
    if 11 + total == 21
      11
    elsif 1 + total == 21
      1
    elsif 11 + total > 21
      1
    else
      11
    end
  end

  def count_total(cards)
    total = 0
    ace_present = false
    nr_of_aces = 0
    cards.each_value do |suit|
      suit.each_value do |card_value|
        if card_value == [1, 11]
          ace_present = true
          nr_of_aces += 1
        else
          total += card_value
        end
      end
    end
    if ace_present
      nr_of_aces.times do
        unless total + calculate_ace(total) > 21
          total += calculate_ace(total)
        else
          total += 1
        end
      end
    end
    total
  end

  def busted?(cards)
    count_total(cards) > 21
  end

  def show_cards(cards, who='player')
    arr_cards = []
      cards.each do |suit, suit_cards|
        suit_cards.each do |card, _|
          arr_cards << [suit, card]
        end
      end
    output = ""
    arr_cards.each do |sub_array|
      output += sub_array[0].to_s[0].upcase + "-" + "#{sub_array[1]} ; "
    end
    output.chomp!("; ")
    if who == 'player'
      prompt("Player cards: " + output)
    else
      prompt("Dealer cards revealed: " + output)
    end
  end

  def show_dealer_cards(cards)
    arr_cards = []
    cards.each do |suit, suit_cards|
      suit_cards.each do |card, _|
        arr_cards << [suit, card]
      end
    end

    output = ""
    nr = arr_cards.size
    unknown_cards = " + unknown card" * (nr - 1)

    output << arr_cards.first[0].to_s[0].upcase + "-" + arr_cards.first[1].to_s
    prompt("Dealer cards: " + output + unknown_cards)
  end

  def player_turn(deck, cards, dealer_cards)
    loop do
      show_dealer_cards(dealer_cards)
      show_cards(cards)
      prompt("Cards total: #{count_total(cards)}")
      if count_total(cards) == 21
        puts ""
        prompt("Lucky you! You got exactly 21. Automatic Stay! :)")
        break
      end
      puts ""
      prompt("Would you like to Hit (H) or Stay (S)?")
      answer = gets.chomp.downcase
      break if answer == 's' || busted?(cards)
      deal_cards!(deck, 1, cards)
      break if busted?(cards)
    end

    if busted?(cards)
      show_cards(cards)
      prompt("You busted! Cards total value: #{count_total(cards)}.")
    else
      prompt("You chose to stay!")
    end
  end

  def dealer_turn(deck, cards)
    hit_nr = 0
    loop do
      break if count_total(cards) >= 17 || busted?(cards)
      if hit_nr == 0
        prompt("Dealer hit, dealing a card...")
      else
        prompt("Dealer hit again...")
      end
      sleep(1.2)
      deal_cards!(deck, 1, cards)
      hit_nr += 1
    end

    prompt("Dealer hit #{hit_nr} time(s) so it has #{hit_nr + 2} cards.")
    show_dealer_cards(cards)

    if busted?(cards)
      puts ""
      prompt("Dealer busted! Cards total value: #{count_total(cards)}.")
      show_cards(cards, 'dealer')
    else
      puts ""
      prompt("Dealer finished! It's time to check the cards! Press any keys to continue..")
      user_continue = gets.chomp
    end
  end

  def define_winner(player_cards, dealer_cards)
    player_total = count_total(player_cards)
    dealer_total = count_total(dealer_cards)

    puts ""
    prompt("Checking the cards...")
    sleep(1.5)

    if player_total == dealer_total
      prompt("It's a tie! Both have #{player_total}")
      show_cards(player_cards)
      show_cards(dealer_cards, 'dealer')
    elsif player_total == 21
      prompt("Player won! Player has: #{player_total}")
      show_cards(player_cards)
      show_cards(dealer_cards, 'dealer')
    elsif dealer_total == 21
      prompt("Dealer won! Dealer has: #{dealer_total}")
      show_cards(player_cards)
      show_cards(dealer_cards, 'dealer')
    elsif player_total > dealer_total
      prompt("Player won! Player has: #{player_total} and Dealer has #{dealer_total}")
      show_cards(player_cards)
      show_cards(dealer_cards, 'dealer')
    else
      prompt("Dealer won! Dealer has: #{dealer_total} and Player has #{player_total}")
      show_cards(player_cards)
      show_cards(dealer_cards, 'dealer')
    end
  end

  def gameplay(deck, player_cards, dealer_cards)
    system('cls')
    prompt("Dealing cards...")
    sleep(1.2)
    deal_cards!(deck, 2, player_cards)
    deal_cards!(deck, 2, dealer_cards)

    player_turn(deck, player_cards, dealer_cards)
    dealer_turn(deck, dealer_cards) unless busted?(player_cards)

    if !busted?(player_cards) && !busted?(dealer_cards)
      define_winner(player_cards, dealer_cards)
    end
  end

  gameplay(deck, player_cards, dealer_cards)

  prompt("When you ready press any keys to continue..")
  user_continue = gets.chomp
end

first_game = true

loop do
  system('cls')
  if first_game
    puts "=> Hi, would you like to play 21 against dealer? (y/n)"
    user_answer = gets.chomp.downcase
    first_game = false
  else
    puts "=> Rematch? (y/n)"
    user_answer = gets.chomp.downcase
  end

  if user_answer == 'y' || user_answer == 'yes'
    twenty_one()
  else
    puts "=> Goodbye!"
    break
  end
end
