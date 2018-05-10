require "minitest/autorun"
require "minitest/pride"
require "./lib/card"
require 'pry'

class CardTest < Minitest::Test
  def test_card_exists
    card = Card.new("Ace", "spades")

    assert_instance_of Card, card
  end

  def test_card_value
    card = Card.new("Ace", "spades")

    assert_equal "Ace", card.value
  end

  def test_card_suit
    card = Card.new("Ace", "spades")

    assert_equal "spades", card.suit
  end
end
