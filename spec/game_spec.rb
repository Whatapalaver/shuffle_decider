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

end
