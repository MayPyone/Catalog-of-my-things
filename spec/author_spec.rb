require './author'
require './item'

describe Author do
  author = Author.new('Min', 'Lu')
  item = Item.new('2010/01/01')
  it 'should display the name of the author' do
    expect(author.first_name).to eq('Min')
    expect(author.last_name).to eq('Lu')
  end

  it 'should add an item to the author' do
    author.add_item(item)

    expect(author.items).to include(item)
  end
end
