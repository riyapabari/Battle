require_relative 'player'

class Game

  def initialize(player1=Player.new,player2=Player.new)
    @player1 = player1
    @player2 = player2
  end

  def attack(player)
    player.receive_attack
  end

end
