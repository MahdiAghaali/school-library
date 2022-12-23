require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'
require './rental'
require './book'
require './person'
require './classroom'

puts '---------Test associations--------'

person = Person.new(25, 'Mahdi')
person2 = Student.new(20, 'Steve')
person3 = Student.new(22, 'Mark')

book1 = Book.new('1984', 'George Orwell')
book2 = Book.new('animal farm', 'George Orwell')

book1.add_rental('2022-12-23', person)
person.add_rental('2022-12-23', book2)
book2.add_rental('2022-12-23', person2)

classroom = Classroom.new('ruby-101')
classroom.add_student(person2)
person3.student_class = (classroom)

puts book1.rental_history
puts book2.rental_history
puts person.rental_history
puts classroom.students
