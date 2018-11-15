require 'hand'

RSpec.describe HandOfCards do
  subject(:test_hand_of_cards) { described_class.new(1) }
  subject(:hand_of_player1) { described_class.new(1) }
  subject(:hand_of_player2) { described_class.new(2) }
  let(:ace_of_Hearts) { double :card, :value => 1, :rank => 'A', :suit => 'Hearts' }
  let(:two_of_Spades) { double :card, :value => 2, :rank => '2', :suit => 'Spades' }
  let(:three_of_Diamonds) { double :card, :value => 3, :rank => '3', :suit => 'Diamonds' }
  let(:queen_of_Spades) { double :card, :value => 12, :rank => 'Q', :suit => 'Spades' }
  let(:king_of_Spades) { double :card, :value => 13, :rank => 'K', :suit => 'Spades' }
  
  context 'Initialisation' do
    it "Initial hand is empty" do
      expect(hand_of_player1.hand.length).to eq(0)
    end

    it "Initial hand has a player name" do
      expect(hand_of_player1.player).to eq("Player 1")
      expect(hand_of_player2.player).to eq("Player 2")
    end

  end

  describe 'score' do

    it "Initial hand has a zero score" do
      expect(hand_of_player1.score).to eq(0)
      expect(hand_of_player2.score).to eq(0)
    end

    it 'Hand of cards can be scored' do
      test_hand_of_cards.hand.push(ace_of_Hearts)
      expect(test_hand_of_cards.score).to eq(1)
      test_hand_of_cards.hand.push(two_of_Spades)
      expect(test_hand_of_cards.score).to eq(3)
      test_hand_of_cards.hand.push(three_of_Diamonds)
      expect(test_hand_of_cards.score).to eq(6)
      test_hand_of_cards.hand.push(queen_of_Spades)
      expect(test_hand_of_cards.score).to eq(18)
      test_hand_of_cards.hand.push(king_of_Spades)
      expect(test_hand_of_cards.score).to eq(31)
    end

  end

  describe 'hand_bonus' do

    it "Initial hand has a bonus score of zero" do
      expect(hand_of_player1.hand_bonus).to eq(0)
      expect(hand_of_player2.hand_bonus).to eq(0)
    end

  end

  describe 'display_hand' do
    it "Displays card details for a hand with a single card" do
      expected_output = "A_Hearts\n"
      test_hand_of_cards.hand.push(ace_of_Hearts)
      expect { test_hand_of_cards.display_hand }.to output(expected_output).to_stdout
    end
    it "Displays card details for a hand with a mutiple cards" do
      expected_multi_output = "A_Hearts\n2_Spades\nQ_Spades\nK_Spades\n"
      test_hand_of_cards.hand.push(ace_of_Hearts)
      test_hand_of_cards.hand.push(two_of_Spades)
      test_hand_of_cards.hand.push(queen_of_Spades)
      test_hand_of_cards.hand.push(king_of_Spades)
      expect { test_hand_of_cards.display_hand }.to output(expected_multi_output).to_stdout
    end
  end

end
