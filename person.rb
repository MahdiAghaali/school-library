class person
  def initialize(id, age, name = 'Unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  attr_reader :id
  attr_accessor :name, :age

  private

  def of_age?
    return true if age >= 18

    false
  end

  public

  def can_use_services?
    of_age? || parent_permission
  end
end
