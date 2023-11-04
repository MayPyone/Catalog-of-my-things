require './author_game'
require_relative 'modules/save_module'
require_relative 'modules/load_module'
require_relative 'modules/music_module'
require_relative 'modules/genre_module'
require_relative 'book'
require_relative 'label'
require_relative 'get_inputs'
require_relative 'game'
require_relative 'author'
require 'json'

class App
  include HelperMethods

  attr_accessor :books, :music_albums, :games, :label, :author, :file_name

  def initialize
    @books = []
    @games = []
    @labels = []
    @authors = []
    @musicalbums = load_musics
    @genres = load_genres
    @games = []
    @labels = []
    @game_author = []
  end
  include GenreModule
  include MusicModule
  include SaveModule
  include LoadModule

  def add_book
    @books = load_from_json('book.json') || []
    published_date = get_user_input('Enter published date')
    title = get_user_input('Enter title')
    author = get_user_input('Enter author')
    cover_state = get_user_input('Enter cover state')
    publisher = get_user_input('Enter publisher')

    book = Book.new(published_date, title, author, cover_state, publisher)
    @books << book.to_hash

    save_to_json('book.json', @books)
    puts 'Book added'
  end

  def add_label
    @labels = load_from_json('label.json') || []

    label_name = get_user_input('Enter label name')
    @labels << Label.new(label_name).to_hash

    save_to_json('label.json', @labels)
    puts 'Label added'
  end

  def display_books
    display_collection('book.json', 'No books', %w[published_date title author cover_state])
  end

  def display_labels
    display_collection('label.json', 'No labels', ['title'])
  end

  def add_game
    @games = load_from_json('game.json') || []
    puts 'Enter published date'
    published_date = gets.chomp
    puts 'Is it a multi-player game (yes or no)'
    multiplayer = gets.chomp
    puts 'Enter last played date'
    last_played_at = gets.chomp
    @games << Game.new(multiplayer, last_played_at, published_date).to_hash
    save_to_json('game.json', @games)
    puts 'Game added'
  end

  def add_game_author
    @game_author = load_from_json('add_game_author.json') || []
    puts 'First name'
    first_name = gets.chomp
    puts 'Last name'
    last_name = gets.chomp
    @game_author << { 'first_name' => first_name, 'last_name' => last_name }
    save_to_json('add_game_author.json', @game_author)
    puts 'Game author added'
  end

  def display_games
    display_collection('game.json', 'No games', %w[published_date multiplayer last_played_at])
  end

  def display_game_authors
    display_collection('add_game_author.json', 'No game authors', %w[first_name last_name])
  end
end
