require './rental'

class Book
  attr_accessor :title, :author, :rental_history

  def initialize(title, author)
    @title = title
    @author = author
    @rental_history = []
  end

  def add_rental(date, person)
    new_rent = Rental.new(date, self, person)
    @rental_history.push(new_rent)
  end
end
