class Game
  def initialize(p1, p2)
    @a = 0
    @b = 0
    @p1 = p1
    @p2 = p2
    @current_player = @p1
  end

  def turn
    question
    answer
    score
    switch_player
  end

  def winner
    winner = @p1.points == 0 ? @p2 : @p1
    puts "#{winner.name} wins with a score of #{winner.points}/3 "
    puts "----- GAME OVER  -----"
    puts "Good bye!"
  end

private
  def random
    @a = 1 + rand(20)
    @b = 1 + rand(20)
  end

  def question
    random
    puts "#{@current_player.name}: What does #{@a} plus #{@b} equal?"
    print "> "
  end

  def answer
    ans = gets.chomp.to_i
    if ans == (@a + @b)
      puts "Ya Buddy!"
    else
      puts "Nope..."
      @current_player.points -= 1
    end
  end

  def score
    puts "P1: #{@p1.points}/3 vs P2: #{@p2.points}/3"
  end

  def switch_player
    @current_player = @current_player == @p1 ? @p2 : @p1
    puts "----- NEW TURN -----"
  end
end