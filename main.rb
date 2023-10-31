
require_relative 'app'

def select_option(option)
  menu_options = {
    '1' => -> { APP.list_books },
    '2' => -> { APP.list_musics },
    '3' => -> { APP.list_games },
    '4' => -> { APP.list_genres },
    '5' => -> { APP.list_labels },
    '6' => -> { APP.list_authors },
    '7' => -> { APP.add_book },
    '8' => -> { APP.add_music },
    '9' => -> { APP.add_game }
  }

  if menu_options.key?(option)
    menu_options[option].call
  else
    puts 'Thanks for using our Application!'
    exit
  end
end

def getlist
  puts "\nPlease choose an options by entering a number"
  puts "\n1 - List all books"
  puts '2 - List all music albums'
  puts '3 - List of games'
  puts '4 - List all genres'
  puts '5 - List all labels'
  puts '6 - List all authors'
  puts '7 - Add a book'
  puts '8 - Add a music album'
  puts '9 - Add a game'
  puts '10 - Exit'
end

def start_app(message)
  puts message
  order = '10'
  loop do
    getlist
    order = gets.chomp
    if ('1'..'10').include? order
      your_option(order)
    else
      puts "\nInvalid input. please try again!"
    end
  end
end

APP = App.new
start_app('Welcome to Catalog of my things')
