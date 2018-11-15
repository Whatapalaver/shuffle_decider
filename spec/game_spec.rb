require 'game'

RSpec.describe Game do
  subject(:test_game) { described_class.new() }
  subject(:game) { described_class.new() }
  subject(:three_player_game) { described_class.new(3) }
  subject(:six_player_game) { described_class.new(6) }
  subject(:deal_of_20_game) { described_class.new(2, 20) }

  context 'Initialisation' do
    it "new Game has a default number of players" do
      expect(test_game.player_numbers).to eq(Game::DEFAULT_PLAYERS)
    end

    it "new Game has a default deal size" do
      expect(test_game.deal_size).to eq(Game::DEFAULT_DEAL_SIZE)
    end

    it "has a deck of 52 cards" do
      expect(test_game.deck_of_cards.deck.length).to eq(52)
    end

    it "new Game has a hand for each player" do
      expect(test_game.hands.length).to eq(Game::DEFAULT_PLAYERS)
    end

    it "allows player numbers to be altered" do
      expect(three_player_game.hands.length).to eq(3)
      expect(six_player_game.hands.length).to eq(6)
    end

    it "raises an error when unfair combinations are selected" do
      expect { described_class.new(3, 20) }.to raise_error("Number of players * deal size must not exceed 52")
    end

  end

  describe 'shuffle_pack' do

    it "shuffled and unshuffled decks have different orders of cards" do
      @unshuffled_deck = test_game.deck_of_cards.deck
      @shuffled_deck = test_game.shuffle_pack
      expect(@shuffled_deck).to match_array(@unshuffled_deck)
      expect(@shuffled_deck).not_to eq(@unshuffled_deck)
    end
  end

  describe 'deal' do

    it "it populates players hands with default number of cards" do
      test_game.deal
      player1_hand = test_game.hands[0].hand
      player2_hand = test_game.hands[1].hand
      expect(player1_hand.length).to eq(Game::DEFAULT_DEAL_SIZE)
      expect(player2_hand.length).to eq(Game::DEFAULT_DEAL_SIZE)
      
    end
  end

  describe 'result' do

    it "returns the winner when an unshuffled pack is dealt" do
      test_game.deal
      expect(test_game.result).to eq("Player 1 wins!")
    end

  end

  describe 'display_player_hands' do
    it "Displays card details for default game and an unshuffled pack" do
      expected_output = <<-VERSE
Player 1 scores: 45
=====================
K_Clubs
J_Clubs
9_Clubs
7_Clubs
5_Clubs
---------------------
Player 2 scores: 40
=====================
Q_Clubs
10_Clubs
8_Clubs
6_Clubs
4_Clubs
---------------------
VERSE
      test_game.deal
      expect { test_game.display_player_hands }.to output(expected_output).to_stdout
    end
  end

end
