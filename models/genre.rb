require_relative '../item'

class Genre
  attr_reader :id
  attr_accessor :name, :items

  @@genres = []

def initialize(name, id)
  super()
    @id = id || Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
