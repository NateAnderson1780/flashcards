gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'
require_relative '../lib/guess'
require_relative '../lib/deck'
require_relative '../lib/round'
require_relative '../card_generator'
require 'pry'

class CardGeneratorTest < Minitest::Test
  def test_cards_generated_returns_new_cards_from_a_file
    card_generator = CardGenerator.new('test/test_cards.txt')

    cards = card_generator.cards
    assert_equal Array, card_generator.cards.class
    assert_equal "What is 5 + 5?", cards.first.question
    assert_equal "10", cards.first.answer
  end
end
