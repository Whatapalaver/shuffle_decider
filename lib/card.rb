class Card

  RANKS = %i[A 2 3 4 5 6 7 8 9 10 J Q K]

  SUITS = %i[Hearts Spades Diamonds Clubs]

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

end
