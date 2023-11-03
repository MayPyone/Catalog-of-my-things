require './author_game'
require_relative './modules/genre_module'
require_relative './modules/music_module'
require_relative './modules/save_module'
require_relative './modules/load_module'
require 'json'

class App
  def initialize
    @books = []
    @games = []
    @labels = []
    @authors = []
    @musicalbums = load_musics
    @genres = load_genres
  end
  include MusicModule
  include GenreModule
  include SaveModule
  include LoadModule

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
