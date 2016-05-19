class Round
  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def deck
    @deck
  end

  def guesses
    @guesses
  end

  def current_card
    deck.cards[@guesses.count]
  end

  def record_guess(guess)
  @guesses << guess
  end

  def feedback
    if @guesses[@guesses.count - 1] == deck.cards[1]
      "Correct"
    else
      "Incorrect"
    end
  end
end
