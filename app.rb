require './author_game'
class App
  def initialize
    @books = []
    @musics = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
  end

  def add_author()
    add_authors
  end

  def add_game()
    add_games
  end

  def list_authors()
    list_all_authors
  end

  def list_games()
    list_all_games
  end
end
