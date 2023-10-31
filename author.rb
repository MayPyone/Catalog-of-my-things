attr_reader :id
attr_accessor :first_name, :last_name, :items

class Author
  def initialize(first, last)
    @id = Random.rand(1..1000)
    @first_name = first
    @last_name = last
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.author = self
  end
end
