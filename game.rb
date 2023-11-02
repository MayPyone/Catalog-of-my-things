require_relative 'item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :publish_date

  def initialize(players, last_play, publish_date)
    super(publish_date)
    @multiplayer = players
    @last_played_at = last_play
  end

  def last_play_difference
    Date.parse(@last_played_at).year - Date.parse(@publish_date).year
  end

  def can_be_archived?
    super && last_play_difference > 2
  end
end
