module SaveModule
def save_file(filename, data)
  puts Dir.mkdir('data') unless Dir.exists?('data')
  File.Write("data/#{filename}.json", JSON.pretty_generate(data))
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
