module LoadModule
  def fetch_data(filename)
    if File.exist?("../storage/#{filename}.json")
      File.read("../storage/#{filename}.json")
    else
      File.write("./storage/#{filename}.json", JSON.pretty_generate([]))
    end
  end

  def load_musics
    musics = JSON.parse(fetch_data('musicalbums'))
    loaded_musics = []
    musics.each do |music|
      # (publish_date, on_spotify)
      loaded_musics << MusicAlbum.new(music['publish_date'], music['on_spotify'])
    end
    loaded_musics
  end

  def load_genres
    genres = JSON.parse(fetch_data('genres'))
    loaded_genres = []
    genres.each do |genre|
      loaded_genres << Genre.new(genre['name'])
    end
    loaded_genres
  end
end
