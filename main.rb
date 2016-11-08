require_relative 'games'
require_relative 'players'

p1 = Players.new("Player 1")
p2 = Players.new("Player 2")
game = Games.new(p1, p2)

while p1.points > 0 && p2.points > 0
game.question
game.answer
end
game.winner

#player.update_points
