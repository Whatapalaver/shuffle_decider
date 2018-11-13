# The Deck class is comprised of 52 individual cards

require_relative 'card'

class DeckOfCards

  attr_accessor :deck

  def initialize
    @deck = generate_deck()
    
  end

  private

  def generate_deck
    deck = []
    Card::SUITS.each do |suit|
      Card::RANKS.each do |rank|
        deck << Card.new(rank, suit)
      end
    end
    deck.flatten
  end

end
