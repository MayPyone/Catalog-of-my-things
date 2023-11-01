require './author-game'
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
end
