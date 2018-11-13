require 'game'

RSpec.describe Game do
  subject(:test_game) { described_class.new() }
  
  context 'Initialisation' do
    it "new Game has a default number of players" do
      expect(test_game.player_number).to eq(Game::DEFAULT_PLAYERS)
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

end
