require 'card'

RSpec.describe Card do
  subject(:ace_of_spades) { described_class.new('A', 'Spades') }
  subject(:queen_of_hearts) { described_class.new('Q', 'Hearts') }
  subject(:two_of_clubs) { described_class.new('2', 'Clubs') }
  subject(:ten_of_diamonds) { described_class.new('10', 'Diamonds') }
  
  context 'Initialising' do
    it "The new card has a rank" do
      expect(ace_of_spades.rank).to eq('A')
    end

    it "The new card has a suit" do
      expect(ace_of_spades.suit).to eq('Spades')
    end
  end

  context 'Card value' do
    it "Ace of Spades has a value of 1" do
      expect(ace_of_spades.value).to eq(1)
    end

    it "Queen of Hearts has a value of 12" do
      expect(queen_of_hearts.value).to eq(12)
    end

    it "Two of Clubs has a value of 2" do
      expect(two_of_clubs.value).to eq(2)
    end

    it "Ten of Diamonds has a value of 10" do
      expect(ten_of_diamonds.value).to eq(10)
    end
  end

  describe 'card_bonus' do
    it "A card of the Hearts suit has a bonus worth 4" do
      expect(queen_of_hearts.card_bonus).to eq(4)
    end
    it "A card of the Clubs suit has a bonus worth 1" do
      expect(two_of_clubs.card_bonus).to eq(1)
    end
  end

end
