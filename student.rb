require './person'

class student < person
  def initialize(*person, classroom)
    super(*person)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
