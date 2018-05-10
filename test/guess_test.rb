require "minitest/autorun"
require "minitest/pride"
require "./lib/guess"
require "./lib/card"
require 'pry'

class GuessTest < Minitest::Test
  def test_guess_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Guess, guess
    assert_instance_of Card, card
    assert_equal "10", card.value
  end

  def test_guess_value
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "10", card.value
  end

  def test_guess_suit
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "Hearts", card.suit
  end

  def test_card_array_holds_value_and_suit
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal ["10", "Hearts"], card.make_card_array
  end

  def test_correct_guess_is_correct
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    # binding.pry
    assert_equal true, guess.correct?
  end

  def test_incorrect_guess_is_incorrect
    card = Card.new("10", "Hearts")
    guess = Guess.new("2 of Diamonds", card)

    assert_equal false, guess.correct?
  end

  def test_guess_feedback_correct
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "Correct!", guess.feedback
  end

  def test_guess_feedback_incorrect
    card = Card.new("10", "Hearts")
    guess = Guess.new("2 of Diamonds", card)

    assert_equal "Incorrect.", guess.feedback
  end
end
