require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/flashcards'

class CardTest < Minitest::Test
  def test_card
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "What is the capital of Alaska?", card.question
    card.answer
    assert_equal ("Juneau"), card.answer
  end
end
