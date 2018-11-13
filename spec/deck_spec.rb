require 'deck'

RSpec.describe DeckOfCards do
  subject(:deck_of_cards) { described_class.new() }

  it "Initialises with a deck of 52 cards" do
    expect(deck_of_cards.deck.length).to eq(52)
  end

end