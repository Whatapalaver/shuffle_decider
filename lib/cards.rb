class Cards

  RANKS = %i[Ace two three four five
    six seven eight nine ten Jack Queen King]

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
        deck << "#{rank} of #{suit}"
      end
    end
    deck.flatten
  end

end
