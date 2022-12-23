class Rental
  attr_accessor :date

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    person.rental_history.push(self)
    book.rental_history.push(self)
  end
end
