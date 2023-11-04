require_relative '../models/music_album'

describe 'Testing MusicAlbum class' do
  context 'Testing MusicAlbum instance and Method' do
    before(:context) do
      @musicalbum = MusicAlbum.new(true, '2022-09-08')
    end

    it 'Testing on spotify instance' do
      expect(@musicalbum.on_spotify).to eq true
    end

    it 'Testing publish Date instance' do
      expect(@musicalbum.publish_date).to eq '2022-09-08'
    end

    it 'Testing MusicAlbum class inheritance' do
      expect(MusicAlbum).to be < Item
    end

    it 'can be moved to archive' do
      expect(@musicalbum.can_be_archived?).to eq false
    end
  end
end
