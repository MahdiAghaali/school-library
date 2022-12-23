require './student'

class Classroom
  attr_accessor :label, :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    return if @students.include? student

    @students.push(student)
    student.student_class=(self)
  end
end
