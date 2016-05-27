require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'
require './card_generator'
require './cards'

filename = "cards.txt"
cards = CardGenerator.new(filename).cards
deck = Deck.new(cards)
round = Round.new(deck)

round.start

# puts "Welcome! You're playing with #{deck.cards.count} cards"
# puts"--------------------------------------""
