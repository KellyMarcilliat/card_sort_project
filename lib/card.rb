class Card
  attr_reader :value
  attr_reader :suit

  def initialize(value, suit)
   @value = value
   @suit = suit
 end

 def make_card_array
   card_array = []
   card_array << @value
   card_array << @suit
 end
end
