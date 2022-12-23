require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'
require './rental'
require './book'
require './person'
require './classroom'

puts '---------Test decorations--------'

# puts person = Person.new(22, 'maximilianus')
# puts person.correct_name
# puts capitalized_person = CapitalizeDecorator.new(person)
# puts capitalized_person.correct_name
# puts capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# puts capitalized_trimmed_person.correct_name

puts '---------Test associations--------'

person = Person.new(25, 'Mahdi')
person2 = Student.new(20, 'Steve')
person3 = Student.new(22, 'Mark')

book1 = Book.new('1984', 'George Orwell')
book2 = Book.new('animal farm', 'George Orwell')

Rental.new('2022-12-23', book1, person)
Rental.new('2022-12-23', book2, person)
Rental.new('2022-12-23', book2, person2)

classroom = Classroom.new('ruby-101')
classroom.add_student(person2)
person3.student_class(classroom)

puts book_1.rental_history
puts book_2.rental_history
puts person.rental_history
puts classroom.students
