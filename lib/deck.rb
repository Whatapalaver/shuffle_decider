require_relative 'card'

class Deck

attr_reader :deck

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