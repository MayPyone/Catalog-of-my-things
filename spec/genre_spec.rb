require_relative '../models/genre'
require_relative '../item'

describe Genre do
  before(:each) do
    @genre = Genre.new('genre')
  end

  it 'takes one parameter and returns a Genre object' do
    expect(@genre).to be_instance_of(Genre)
  end

  it 'Genre items list should be empty' do
    expect(@genre.items.length).to eq(0)
  end

  it 'Genre items list should have one item' do
    @genre.add_item(Item.new('2023-01-01'))
    expect(@genre.items.length).to eq(1)
  end
end
