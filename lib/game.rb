# A wrapper class for the entire game

require_relative 'deck'
require_relative 'hand'

class Game

  DEFAULT_PLAYERS = 2
  DEFAULT_DEAL_SIZE = 5

  attr_reader :player_number, :deal_size, :deck, :hands

  def initialize(player_number = DEFAULT_PLAYERS, deal_size = DEFAULT_DEAL_SIZE)
    @player_number = player_number
    @deal_size = deal_size
    @deck = Deck.new
    @hands = generate_hands()
  end

  private

  def generate_hands
    hands = []
    1.upto(@player_number) do |player|
      hands << Hand.new(player)
    end
    hands
  end

end
