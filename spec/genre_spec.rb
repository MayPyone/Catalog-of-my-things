require_relative '../models/genre'
require_relative '../item'

describe 'Testing Genre classes' do
  before(:context) do
    @genre = Genre.new('Song')
  end

  context 'Testing Genre instance and Method' do
    it 'Testing name instance' do
      expect(@genre.name).to eq 'Song'
    end

    it 'Testing add_items method' do
      @item = Item.new('2023-09-08')
      @genre.add_item(@item)
      expect(@genre.items).to include(@item)
    end
  end
end
