class Book
  attr_accessor :name, :author, :price
  def initialize(name, author, price)
    @name = name
    @author = author
    @price = price
  end
end