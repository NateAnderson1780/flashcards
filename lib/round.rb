class Round
  attr_accessor :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
  end

  def current_card
    deck.cards[@guesses.count]
  end

  def record_guess(guess)
    current_guess = Guess.new(guess, current_card)
    @guesses << current_guess
    current_guess
  end

  def total_correct
    if @guesses[@guesses.count - 1] == deck.cards[@guesses.count - 1].answer
        @number_correct += 1
    else
        @number_correct
    end
  end

  def number_correct
    @number_correct
  end

  def start
    puts "Welcome! You're playing with #{deck.cards.count} cards"
    puts "------------------------------------------------------"
    puts "This is card number #{(deck.cards.index(current_card)) + 1} of #{deck.cards.count}"
    puts "Question: #{current_card.question}"
    guess = Guess.new(gets.chomp.to_s, current_card)
    record_guess(guess)
    total_correct
    puts guess.feedback
    puts "This is card number #{(deck.cards.index(current_card)) + 1} of #{deck.cards.count}"
    puts "Question: #{current_card.question}"
    guess = Guess.new(gets.chomp.to_s, current_card)
    record_guess(guess)
    total_correct
    puts guess.feedback
    puts "This is card number #{(deck.cards.index(current_card)) + 1} of #{deck.cards.count}"
    puts "Question: #{current_card.question}"
    guess = Guess.new(gets.chomp.to_s, current_card)
    record_guess(guess)
    total_correct
    puts guess.feedback
    puts "This is card number #{(deck.cards.index(current_card)) + 1} of #{deck.cards.count}"
    puts "Question: #{current_card.question}"
    guess = Guess.new(gets.chomp.to_s, current_card)
    record_guess(guess)
    total_correct
    puts guess.feedback
    puts "****** Game over! ******"
    puts "You had #{total_correct} out of #{guesses.count} for a score of #{(total_correct) / (guesses.count)}"
  end
end
