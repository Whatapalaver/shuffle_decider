# A hand continues a number of cards 

class Hand

  attr_reader :hand, :player

  def initialize(player)
    @player = "Player #{player}"
    @hand = []
  end

  def score
    if @hand.length.zero?
      score = 0
    else
      values_array = @hand.map { |card| card.value }
      score = values_array.reduce(:+)
    end

  end

end
