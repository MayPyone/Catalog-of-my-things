require './item'
require_relative '../models/genre'
require './author'
require './label'

describe Item do
  item = Item.new('2010/01/01')
  let(:genre) { Genre.new('Horror') }
  let(:author) { Author.new('Min', 'Lu') }
  let(:label) { Label.new('L1') }
  it 'should display the publish date' do
    expect(item.publish_date).to eq('2010/01/01')
  end

  describe '#time_difference' do
    it 'returns the correct time difference' do
      item = Item.new('2000-01-01')
      expected_time_difference = Date.today.year - Date.parse('2000-01-01').year
      expect(item.time_difference).to eq(expected_time_difference)
    end
  end

  describe '#can_be_archived?' do
    it 'returns true if the item can be archived' do
      item = Item.new("#{Date.today.year - 11}-01-01")
      expect(item.can_be_archived?).to be true
    end
    it 'returns false if the item cannot be archived' do
      item = Item.new("#{Date.today.year - 8}-01-01")
      expect(item.can_be_archived?).to be false
    end
  end

  describe '#move_to_archive' do
    it 'return true if the item can be archived' do
      item = Item.new("#{Date.today.year - 11}-01-01")
      item = Item.new("#{Date.today.year - 11}-01-01")
      item.move_to_archive
      expect(item.can_be_archived?).to be true
    end

    it 'return false if the item cannot be archived' do
      item = Item.new("#{Date.today.year}-01-01")
      item.move_to_archive
      expect(item.can_be_archived?).to be false
    end
  end

  describe '#genre' do
    it 'The item of genre will be added to the array' do
      item.genre = genre
      expect(item.genre).to eq(genre)
      expect(genre.items).to include(item)
    end
  end

  describe '#author' do
    it 'The author-item will be added to the array' do
      item.author = author
      expect(item.author).to eq(author)
      expect(author.items).to include(item)
    end
  end

  describe '#label' do
    it 'The label-item will be added to the array' do
      item.label = label
      expect(item.label).to eq(label)
      expect(label.items).to include(item)
    end
  end
end
