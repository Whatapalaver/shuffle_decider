# A hand continues a number of cards 

class Hand

  attr_reader :hand, :player

  def initialize(player)
    @player = "Player #{player}"
    @hand = []
  end

end
