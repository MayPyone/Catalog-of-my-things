require './author'
require './item'
describe Author do
  author = Author.new('Min', 'Lu')

  context 'Creating an author' do
    it 'should create an author properly' do
      expect(author.first_name).to eq('Min')
      expect(author.last_name).to eq('Lu')
    end

      it 'should add items to the array when the method is called' do
        item = Item.new('2010/02/02')
        author = Author.new('Min', 'Lu')
        author.add_item(item)
        expect(author.items).to include item
        
      end
  end
end
