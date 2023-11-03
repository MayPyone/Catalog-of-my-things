module SaveModule
def save_file(filename, storage)
  puts Dir.mkdir('storage') unless Dir.exists?('storage')
  File.Write("storage/#{filename}.json", JSON.pretty_generate(storage))
  end

  def save_musics()
    musics = []
    @musics.each do |music|
      musics << {
        on_spotify: music.on_spotify,
        publish_date: music.publish_date,
        genre: music.genre.name
      }
    end
    save_file('musics', musics)
  end

  def save_genres()
    genres = []
    @genres.each do |genre|
      genres << {
        name: genre.name,
        description: genre.description
      }
    end
    save_file('genres', genres)
  end
end
