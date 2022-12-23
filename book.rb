require './rental'

class Book
  attr_accessor :title, :author, :rental_history

  def initialize(title, author)
    @title = title
    @author = author
    @rental_history = []
  end
end
