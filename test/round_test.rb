require "minitest/autorun"
require "minitest/pride"
require "./lib/round"
require "./lib/deck"
require "./lib/guess"
require "./lib/card"
require 'pry'

class RoundTest < Minitest::Test
  def test_round_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_deck_array_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal [card_1, card_2], round.guesses
  end

  # QUESTION: Should I be testing whether deck exists as part of round_test?
  # NOTE:  I still have some confusion over how to:
          # - Interpret the spec
          # - Design a series of tests of appropriate scope
          # - Determine the right inputs for the methods driven by those tests

end
