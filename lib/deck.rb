class Deck
  attr_accessor :cards

  def initialize(cards)
    # require 'pry';binding.pry
    @cards = cards
  end

  def count
    @cards.count
  end
end
