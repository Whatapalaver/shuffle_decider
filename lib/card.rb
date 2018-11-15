# Each card is an instance of the Card class

class Card

  RANKS = %i[A 2 3 4 5 6 7 8 9 10 J Q K]

  SUITS = %i[Hearts Spades Diamonds Clubs]

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = value()
    @card_bonus = card_bonus()
  end

  def value
    RANKS.index(rank.to_sym) + 1
  end

  def card_bonus
    case @suit
    when 'Hearts'
      4
    when 'Spades'
      3
    when 'Diamonds'
      2
    else
      1
    end
  end

end
