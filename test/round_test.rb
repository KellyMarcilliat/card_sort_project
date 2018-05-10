require "minitest/autorun"
require "minitest/pride"
require "./lib/round"
require "./lib/guess"
require "./lib/card"
require 'pry'

class RoundTest < Minitest::Test
  def test_round_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    #deck = Deck.new([card_1, card_2])
    round = Round.new#(deck)

    assert_instance_of Round, round


  end
end
