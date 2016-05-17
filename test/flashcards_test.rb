gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/flashcards'
require_relative '../lib/guess'

class CardTest < Minitest::Test
  def test_card
    card = Card.new("What is the capital of Alaska?", "Juneau")
    card.question
    assert_equal ("What is the capital of Alaska?"), card.question
    card.answer
    assert_equal ("Juneau"), card.answer
  end

  def is_the_guess_correct
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    guess.card
    guess.response
    guess.correct?

  end
end
