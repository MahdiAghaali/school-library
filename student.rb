require './person'

class Student < Person
  def initialize(*person, classroom)
    super(*person)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def student_class=(param_class)
    return if @classroom == param_class

    @classroom = param_class
    param_class.add_student(self)
  end
end
