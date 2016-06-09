require_relative 'player'

class Game

  attr_reader :current_player, :opponent

  def initialize(player1=Player.new,player2=Player.new)
    @players = [player1, player2]
    @current_player = player1
    @opponent = player2
  end

  def attack(player)
    player.receive_attack
  end

  def player1
  	@players[0]
  end

  def player2
  	@players[1]
  end

  def switch_player
  	@opponent = @current_player
    if @current_player == @players.last
      @current_player = @players[0]
    else
      index = @players.index(@current_player)
      @current_player = @players[index+1]
    end
  end

end
