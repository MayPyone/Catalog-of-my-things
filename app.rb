require './author_game'
require_relative './modules/genre_module'
require_relative './modules/music_module'
require_relative './modules/save_module'
require_relative './modules/load_module'
require 'json'

class App
  def initialize
    @books = []
    @musicalbums = load_musics
    @games = []
    @genres = load_genres
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

  include GenreModule
  include MusicModule
  include SaveModule
  include LoadModule
end
