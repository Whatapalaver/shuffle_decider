require 'card'

RSpec.describe Card do
  subject(:card) { described_class.new('A', 'Spades') }

  context 'Initialising' do
    it "The new card has a rank" do
      expect(card.rank).to eq('A')
    end

    it "The new card has a suit" do
      expect(card.suit).to eq('Spades')
    end
  end

end
