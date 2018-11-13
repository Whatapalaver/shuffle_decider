require 'hand'

RSpec.describe Hand do

  subject(:hand_of_player1) { described_class.new(1) }
  subject(:hand_of_player2) { described_class.new(2) }
  
  context 'Initialisation' do
    it "Initial hand is empty" do
      expect(hand_of_player1.hand.length).to eq(0)
    end

    it "Initial hand has a player name" do
      expect(hand_of_player1.player).to eq("Player 1")
      expect(hand_of_player2.player).to eq("Player 2")
    end

  end

end
