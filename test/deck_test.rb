require "minitest/autorun"
require "minitest/pride"
require "./lib/deck"
require "./lib/round"
require "./lib/guess"
require "./lib/card"
require 'pry'

class DeckTest < Minitest::Test
  def test_deck_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])

    assert_instance_of Deck, deck
  end
end
