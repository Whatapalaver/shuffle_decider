# A wrapper class for the entire game

require_relative 'deck'
require_relative 'hand'

class Game

  DEFAULT_PLAYERS = 2
  DEFAULT_DEAL_SIZE = 5

  attr_reader :player_number, :deal_size, :deck_of_cards, :hands

  def initialize(player_number = DEFAULT_PLAYERS, deal_size = DEFAULT_DEAL_SIZE)
    @player_number = player_number
    @deal_size = deal_size
    @deck_of_cards = DeckOfCards.new
    @hands = generate_hands()
  end

  def shuffle_pack
    @deck_of_cards.deck = @deck_of_cards.deck.shuffle()
  end

  private

  def generate_hands
    hands = []
    1.upto(@player_number) do |player|
      hands << HandOfCards.new(player)
    end
    hands
  end

end
