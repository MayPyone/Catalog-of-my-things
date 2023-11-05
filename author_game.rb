require './author'
require './write'
require './game'
require './read'
def add_authors()
  puts "Enter author's first name"
  first = gets.chomp
  puts "Enter author's last name"
  last = gets.chomp
  author = Author.new(first, last)
  data = {
    first_name: author.first_name,
    last_name: author.last_name
  }
  write(data, 'author.json')
end

def add_games()
  puts 'Multiplayer game? Yes/No'
  user_input = gets.chomp.downcase
  multiplayer = user_input == 'yes'
  puts 'The final day of the game'
  final_date = gets.chomp
  puts 'The begining date of the game'
  start_date = gets.chomp
  game = Game.new(multiplayer, final_date, start_date)
  data = {
    multiplayer: game.multiplayer,
    final_date: game.last_played_at,
    start_date: game.publish_date
  }
  write(data, 'game.json')
end

def list_all_authors()
  author_list = read_file('author.json')
  author_list.each do |author|
    puts "Author : #{author['first_name']} #{author['last_name']}"
  end
end

def list_all_games()
  game_list = read_file('game.json')
  game_list.each do |game|
    puts "multiplayers? :#{game['multiplayer']}  Publish-date: #{game['start_date']}  Final-date :#{game['final_date']}"
  end
end
