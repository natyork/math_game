class Games
  attr_reader :a, :b

  def initialize(p1, p2)
    @a = 0
    @b = 0
    @p1 = p1
    @p2 = p2
    @current_player = @p1
  end

  def new_turn
    score
    if @current_player == @p1
      @current_player = @p2
    else
      @current_player = @p1
    end
    puts "----- NEW TURN -----"
  end

  def question
    random
    puts "#{@current_player.name}: What does #{a} plus #{b} equal?"
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
    new_turn
  end

  def score
    puts "P1: #{@p1.points}/3 vs P2: #{@p2.points}/3"
  end

  def winner
    winner = ""
    if @p1.points == 0
      winner = @p2
    else
      winner = @p1
    end
    puts "#{winner.name} wins with a score of #{winner.points}/3 "
    puts "----- GAME OVER  -----"
    puts "Good bye!"
  end

private
  def random
    @a = 1 + rand(20)
    @b = 1 + rand(20)
  end


end