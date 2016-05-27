require 'pry'

class CardGenerator
  attr_reader :filename

  def initialize(filename)
    @filename = filename
    @cards = []
  end

  def cards
    file = File.open(@filename)
    unsplit = file.read
    new_cards_array = unsplit.chomp.split(",")
    binding.pry
    question = new_cards_array[0]
    answer = new_cards_array[1]
    new_card = Card.new(question, answer)
    @cards << new_card
  end
end
