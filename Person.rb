class Person
  def initialize(id, name = "Unknown", age, parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  attr_reader :id
  attr_accessor :name, :age

  private

  def is_of_age?
    if self.age >= 18 then return true
    else return false end
  end

  public 

  def can_use_services?
    self.is_of_age? || self.parent_permission
  end
end
