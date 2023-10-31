describe Author do
  it 'should have a name' do
    author = Author.new
    author.name = 'Yesuf'
    author.name.should eq('Yesuf')
  end
end
