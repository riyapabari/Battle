require 'player'

describe Player do

  subject(:player1) { described_class.new("Aquarious") }

  it 'returns player name' do
    expect(player1.name).to eq("Aquarious")
  end

end
