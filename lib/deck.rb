require_relative 'card'

class Deck

  RANKS = %i[A 2 3 4 5 6 7 8 9 10 J Q K]

  SUITS = %i[Hearts Spades Diamonds Clubs]

  attr_reader :deck

  def initialize
    @deck = generate_deck()
    
  end

  private

  def generate_deck
    deck = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        deck << Card.new(rank, suit)
      end
    end
    deck.flatten
  end

end