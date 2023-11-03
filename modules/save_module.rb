module SaveModule
  def save_file(filename, storage)
    puts Dir.mkdir('storage') unless Dir.exist?('storage')
    File.write("storage/#{filename}.json", JSON.pretty_generate(storage))
  end

  def save_musics
    music_data = []
    @musicalbums.each do |musicalbum|
      music_data << { publish_date: musicalbum.publish_date, on_spotify: musicalbum.on_spotify }
    end
    save_file('musicalbums', music_data)
  end

  def save_genres
    genres_data = []
    @genres.each do |genre|
      genres_data << { name: genre.name }
    end
    save_file('genres', genres_data)
  end
end
