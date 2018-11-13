# A wrapper class for the entire game

require_relative 'deck'
require_relative 'hand'

class Game

  DEFAULT_PLAYERS = 2
  DEFAULT_DEAL_SIZE = 5

  attr_reader :player_numbers, :deal_size, :deck_of_cards, :hands

  def initialize(player_numbers = DEFAULT_PLAYERS, deal_size = DEFAULT_DEAL_SIZE)
    @player_numbers = player_numbers
    @deal_size = deal_size
    @deck_of_cards = DeckOfCards.new
    @hands = generate_hands()
  end

  def shuffle_pack
    @deck_of_cards.deck = @deck_of_cards.deck.shuffle()
  end

  def deal
    @deal_size.times do
      @hands.each do |player| 
        player.hand.push(@deck_of_cards.deck.pop)
      end
    end
  end

  def result
    if draw?
      outcome = "It's a draw"
    else
      outcome = @hands[max_score_index].player + " wins!"
    end
    outcome

  end

  def draw?
    # Method only required until suit bonus is utilised
    # Only works with default two player game
    player_scores[0] == player_scores[1]
  end

  def display_player_hands
    @hands.each do |player| 
      puts player.player
      puts "=========="
      player.display_hand
      puts "----------"
    end
    return nil
  end
  

  private

  def generate_hands
    hands = []
    1.upto(@player_numbers) do |player|
      hands << HandOfCards.new(player)
    end
    hands
  end

  def player_scores
    @hands.map { |players_hand| players_hand.score }
  end

  

  def max_score_index
    player_scores.each_with_index.max[1]
  end

end
