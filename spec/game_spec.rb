require 'game'

describe Game do

  subject(:game) { described_class.new(player1,player2) }
  let(:player1) { double :player, name: "Aquarious" }
  let(:player2) { double :player, name: "Pisces" }

  describe '#attack' do    
    it 'attacks player 2' do
      expect(player2).to receive( :receive_attack )
      game.attack(player2)
    end
  end

  describe '#player1' do
  	it 'retrieves player 1' do
  		expect(game.player1).to eq player1
  	end
  end

  describe '#player2' do
  	it 'retrieves player 2' do
  		expect(game.player2).to eq player2
  	end
  end

  describe '#switch_player' do
    it 'switches players' do
      game.switch_player
      expect(game.current_player).to eq player2
    end

    it 'switches players multiple times' do
      game.switch_player
      game.switch_player
      expect(game.current_player).to eq player1
    end
  end

end
