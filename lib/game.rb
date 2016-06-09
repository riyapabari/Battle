require_relative 'player'

class Game

  def initialize(player1=Player.new,player2=Player.new)
    @players = [player1, player2]
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

end
