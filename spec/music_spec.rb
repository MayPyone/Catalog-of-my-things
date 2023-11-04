require_relative '../models/music'

describe 'testing Music class' do
 before(:context) do
    @music = Music.new('music')
  end

  context 'Testing  MusicAlbum instance and Method' do
    it 'Testing on spotify instance' do
      expect(@musicalbum.on_spotify).to be true
    end

    it 'Testing publish Date instance' do
      expect(@musicalbum.publish_date).to eq '2023-07-12'
    end

    it 'Testing MusicAlbum class inheritance' do
      expect(@musicalbum).to be_kind_of(Item)
    end
end
