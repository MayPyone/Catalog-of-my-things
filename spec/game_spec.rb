require './game'
require './item'

describe Game do
  game = Game.new(true, '2022/02/03', '2002/05/05')
  it 'should initalize number of players and start and final date' do
    expect(game.multiplayer).to eq(true)
    expect(game.last_played_at).to eq('2022/02/03')
    expect(game.publish_date).to eq('2002/05/05')
  end

  it 'should return true for can_be_archieved?' do
    expect(game.can_be_archived?).to eq(true)
  end
end
