require 'date'
class Item
  attr_accessor :genre, :author, :label
  attr_reader :publish_date

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @achieve = false
  end

  def time_difference()
    Date.today.year - Date.parse(@publish_date).year
  end

  def can_be_archived?()
    true if time_difference > 10
  end

  def move_to_archive()
    @achieve = can_be_archived?
  end
end


