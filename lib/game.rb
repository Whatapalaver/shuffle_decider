# A wrapper class for the entire game

require_relative 'deck'
require_relative 'hand'

class Game

  DEFAULT_PLAYERS = 2
  DEFAULT_DEAL_SIZE = 5

  attr_reader :player_numbers, :deal_size, :deck_of_cards, :hands

  def self.create(player_numbers = DEFAULT_PLAYERS, deal_size = DEFAULT_DEAL_SIZE)
    @game = Game.new(player_numbers, deal_size)
  end

  def self.instance
    @game
  end

  def initialize(player_numbers = DEFAULT_PLAYERS, deal_size = DEFAULT_DEAL_SIZE)
    @player_numbers = player_numbers
    @deal_size = deal_size
    @deck_of_cards = DeckOfCards.new
    @hands = generate_hands()

    validate!
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
    @hands[bonus_score_index].player + " wins!"
  end

  def display_player_hands
    @hands.each do |player| 
      puts "#{player.player} scores: #{player.score}"
      puts "====================="
      player.display_hand
      puts "---------------------"
    end
    return nil
  end

  def player_scores
    @hands.map { |players_hand| players_hand.score }
  end

  private

  def generate_hands
    hands = []
    1.upto(@player_numbers) do |player|
      hands << HandOfCards.new(player)
    end
    hands
  end

  def player_score_with_bonus
    @hands.map { |players_hand| (players_hand.score + players_hand.hand_bonus) }
  end

  def max_score_index
    player_scores.each_with_index.max[1]
  end

  def bonus_score_index
    player_score_with_bonus.each_with_index.max[1]
  end

  def validate!
    raise ArgumentError.new("Number of players * deal size must not exceed 52") unless (@deal_size * @player_numbers) < 52
  end

end
