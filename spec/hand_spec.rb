require 'hand'

RSpec.describe Hand do
  subject(:test_hand) { described_class.new(1) }
  subject(:hand_of_player1) { described_class.new(1) }
  subject(:hand_of_player2) { described_class.new(2) }
  let(:ace) { double :card, :value => 1 }
  let(:two) { double :card, :value => 2 }
  let(:three) { double :card, :value => 3 }
  let(:queen) { double :card, :value => 12 }
  let(:king) { double :card, :value => 13 }
  
  context 'Initialisation' do
    it "Initial hand is empty" do
      expect(hand_of_player1.hand.length).to eq(0)
    end

    it "Initial hand has a player name" do
      expect(hand_of_player1.player).to eq("Player 1")
      expect(hand_of_player2.player).to eq("Player 2")
    end

  end

  context 'Score' do

    it "Initial hand has a zero score" do
      expect(hand_of_player1.score).to eq(0)
      expect(hand_of_player2.score).to eq(0)
    end

    it 'Hand of cards can be scored' do
      test_hand.hand.push(ace)
      expect(test_hand.score).to eq(1)
      test_hand.hand.push(two)
      expect(test_hand.score).to eq(3)
      test_hand.hand.push(three)
      expect(test_hand.score).to eq(6)
      test_hand.hand.push(queen)
      expect(test_hand.score).to eq(18)
      test_hand.hand.push(king)
      expect(test_hand.score).to eq(31)
    end




  end

end
