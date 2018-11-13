require 'deck'

RSpec.describe Deck do
  subject(:deck) { described_class.new() }

  it "Initialises with a deck of 52 cards" do
    expect(deck.deck.length).to eq(52)
  end

end