require 'minitest/autorun'
require_relative '../models/music_album'

class MusicModuleTest < Minitest::Test
  def setup
    @music_module = MusicModule.new
  end

  def test_display_music_album_with_empty_list
    assert_equal 'No music albums found', @music_module.display_music_album
  end

  def test_display_music_album_with_non_empty_list
    @music_module.add_music_album('2023-11-04', 'y')
    assert_equal "\nExisting music albums in the list:\n 1) Music Albem publish date: 2023-11-04 It is on spotify: true",
                 @music_module.display_music_album
  end

  def test_add_music_album_with_valid_input
    @music_module.add_music_album('2023-11-04', 'y')
    assert_equal 1, @music_module.musicalbums.size
    assert_equal '2023-11-04', @music_module.musicalbums[0].publish_date
    assert_equal true, @music_module.musicalbums[0].on_spotify
  end

  def test_add_music_album_with_invalid_publish_date
    assert_raises ArgumentError do
      @music_module.add_music_album('2023-11-32', 'y')
    end
  end

  def test_add_music_album_with_invalid_on_spotify_input
    assert_raises ArgumentError do
      @music_module.add_music_album('2023-11-04', 'z')
    end
  end
end
