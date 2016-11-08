require_relative 'game'
require_relative 'player'

p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
game = Game.new(p1, p2)

until p1.points < 1 || p2.points < 1
  game.turn
end
game.winner
