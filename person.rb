require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'
require './rental'
require './book'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rental_history

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = rand(1...1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental_history = []
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    new_rent = Rental.new(date, book, self)
    @rental_history.push(new_rent)
  end
end
