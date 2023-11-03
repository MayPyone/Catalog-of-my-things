require_relative '../models/music_album'
require_relative '../models/genre'
require 'date'

module MusicModule
  def list_all_musics()
    if @musicalbums.empty?
      puts "No music albums found"
    else
      puts "\nExisting music albums in the list:"
      @musicalbums.each_with_index do |musicalbum, i|
        puts "\n #{i + 1}) Music Albm publish date: #{musicalbum.publish_date},"
        puts "It is on spotify: #{musicalbum.on_spotify},"
       end
    end
  end

  def add_music()
    puts "\nPlease enter the music album publish date [Enter date in format (yyyy-mm-dd)]"
    publish_date = gets.chomp
    puts "Enter [y/n] if the music album is on spotify"
    on_spotify = gets.chomp
    @musicalbums << MusicAlbum.new(on_spotify, publish_date)
    save_musics
    puts "\nPlease enter the genre name"
    genre_name = gets.chomp
    @genres << Genre.new(genre_name)
    puts "\nMusic album added successfully"
    save_genres
  end
end
