# Rename from code to appropriate module name
require 'cards'

RSpec.describe Cards do
  subject(:cards) { described_class.new() }

  it "Initialises with a deck of 52 cards" do
    expect(cards.deck.length).to eq(52)
  end

end
