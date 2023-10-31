require 'date'
class Item
  attr_reader :genre, :author, :label, :publish_date

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @achieve = false
  end

  def time_difference()
    Date.today.year - Date.parse(@publish_date).year
  end

  def can_be_archived?()
    time_difference > 10
  end

  def move_to_archive()
    @achieve = can_be_archived?
  end

  def genre=(genre)
    @genre = genre
    genre.add_item(self)
  end

  def author=(author)
    @author = author
    author.add_item(self)
  end

  def label=(label)
    @label = label
    label.add_item(self)
  end
end
