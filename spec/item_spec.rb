require './item'

describe Item do
  item = Item.new('2010/01/01')
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
      item = Item.new("#{Date.today.year - 9}-01-01")
      expect(item.can_be_archived?).to be_falsey
    end
  end
end
