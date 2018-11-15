Coding Chalenge: World's Simplest Poker
====

*Build a very simple card game, played between two or more players. Immediately after the cards are dealt, the player with the highest hand wins.*

Screenshots
----

![html GUI](https://github.com/Whatapalaver/shuffle_decider/blob/master/Shuffle_Decider.png)  

![html results](https://github.com/Whatapalaver/shuffle_decider/blob/master/Shuffle_result.png)  

Basic User Stories
----

- [x] As a lone player, so I can have help with my decision making, I'd like two hands to be dealt with the highest scorer declared a winner or a draw for matching scores.

- [x] As a player, so I can control the speed of the game, I would like to determine the number of cards dealt for each hand.

- [x] As a player, who would like to extend this game to my friends, I would like to control the number of players or hands that are dealt.

- [x] As the computer, who wants to prevent unfair play, I would like to block unfair or impossible combinations of players and cards.

Gold-Plated User Stories
-----

- [x] As a visual player, so that I can avoid command line geekery, I would like an HTML user interface to play the game.

- [ ] As a computer that likes to show off my capabilities, I would like to sort each hand by suit and value.

- [ ] As a wannabe poker player, I would like to inject some excitement into the scoring by awarding bonus points for pairs, three of a kinds and straights.

- [x] As a player who cannot accept a draw, I would like the suit to determine the overall winner.

- [ ] As a very keen player of `shuffle_decider`, I would like to be able to signup for an account so I can keep track of my scores.

To Use
---

- Clone or fork this project `git clone https://github.com/Whatapalaver/shuffle_decider.git`
- Change into the directory `cd shuffle_decider`
- Install dependencies `bundle install`
- You should also create a .gitignore file to prevent all the coverage files being sent to github: `echo "coverage" >> .gitignore`  
- to run the server `ruby app.rb`

To test
----

- This command will run both the rspec tests, capybara and simplecov `bundle exec rspec`
- To view the coverage detail as a webpage run `open coverage/index.html`

irb Feature Testing for default 2 player 5 card deal:

```
require './lib/game.rb'
test_game = Game.new
test_game.shuffle_pack
test_game.deal
test_game.display_player_hands
test_game.result
```  

irb Feature Testing for custom players and default 5 card deal:

```
require './lib/game.rb'
three_player_game = Game.new(3)
three_player_game.shuffle_pack
three_player_game.deal
three_player_game.display_player_hands
three_player_game.result
```

irb Feature Testing for custom players and custom card deal:

```
require './lib/game.rb'
four_player_3_card_game = Game.new(4,3)
four_player_3_card_game.shuffle_pack
four_player_3_card_game.deal
four_player_3_card_game.display_player_hands
four_player_3_card_game.result
```

![irb Output](https://github.com/Whatapalaver/shuffle_decider/blob/master/irb_output.png)  

My approach
----

I have opted to use Ruby and a simple Sinatra based web app as I am more familiar running TDD testing using rspec.


