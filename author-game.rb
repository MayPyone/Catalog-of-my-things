require './author'
require './write'
require './game'
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
  write(data,'author.json')
end

def add_games()
  puts 'Enter the numbers of players'
  player = gets.chomp
  puts 'The final day of the game'
  final_date = gets.chomp
  puts 'The begining date of the game'
  start_date = gets.chomp
  game = Game.new(12,final_date,start_date)
  data = {
    player: game.multiplayer,
    final_date: game.last_played_at,
    start_date: game.publish_date
  }
  write(data,'game.json')
end
