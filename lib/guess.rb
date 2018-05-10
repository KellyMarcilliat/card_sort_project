# class Card
#   # attr_reader :value
#   # attr_reader :suit
#
#   def initialize(value, suit)
#    @value = value
#    @suit = suit
#   end
#
#  def make_card_array
#    card_array = []
#    card_array << @value
#    card_array << @suit
#  end
# end
# require_relative 'card'
class Guess
  attr_reader :response,
              :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def guess_value_suit_array
    guess_minus_of = response.delete"of", "of "
    guess_array = guess_minus_of.split
  end

  def correct?
    if guess_value_suit_array == @card.make_card_array
      true
    else
      false
    end
  end

  def feedback
    if correct? == true
      p "Correct!"
    else
      p "Incorrect."
    end
  end

end
