require 'pry'

class Deck
  def initialize(deck_array)
    @deck_array = deck_array
  end

  def cards
    @deck_array
  end

  def count
    @deck_array.count
  end 
end
