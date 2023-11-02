require_relative '../models/music_album'
require_relative '../models/genre'
require 'date'

module MusicModule
  def list_all_musics()
    if @musics.empty?
      puts "No music albums found"
    else
      puts "\nExisting music albums in the list:"
      @musics.each do |music, i|
        puts "\n #{i + 1}) Music Albm publish date: #{music.publish_date},"
        puts "It is on spotify: #{music.on_spotify},"
       end
    end
  end

  def add_music()
    puts "\nPlease enter the music album publish date"
    publish_date = gets.chomp
    puts "Enter [y/n] if the music album is on spotify"
    on_spotify = gets.chomp
    music = MusicAlbum.new(on_spotify, publish_date)
    puts "\nPlease enter the genre name"
    genre_name = gets.chomp
    @musics << music
    puts "\nMusic album added successfully"
  end
end
