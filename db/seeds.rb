# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Students
kwaku = Student.create(name: "Kwaku", age: 25, major: "Computer Science")
andrew = Student.create(name: "Andrew", age: 25, major: "History")
jahaira = Student.create(name: "Jahaira", age: 25, major: "Biology")
milo = Student.create(name: "Milo", age: 22, major: "Archeology")
buford = Student.create(name: "Buford", age: 22, major: "Undeclared")
shooter = Student.create(name: "Shooter", age: 22, major: "Business")
morgan = Student.create(name: "Morgan", age: 23, major: "Accounting")
jasmine = Student.create(name: "Jasmine", age: 26, major: "Sociology")
glen = Student.create(name: "Glen", age: 28, major: "Business")
charlotte = Student.create(name: "Charlotte", age: 21, major: "Art")

#Instructors
chase = Instructor.create(name: "Chase")
eric = Instructor.create(name: "Eric")
sylwia = Instructor.create(name: "Sylwia")

#Courses
ruby = Course.create(name: "Ruby", seat_limit: 5, week_day: "Monday", time: 11, instructor_id: chase.id)
ar = Course.create(name: "Active Record", seat_limit: 5, week_day: "Tuesday", time: 10, instructor_id: sylwia.id)
rails = Course.create(name: "Rails", seat_limit: 8, week_day: "Wednesday", time: 9, instructor_id: eric.id)

#Grades
g1 = Grade.create(grade_value: 9, student_id: kwaku.id, course_id: ruby.id)
g2 = Grade.create(grade_value: 9, student_id: andrew.id, course_id: rails.id)
g3 = Grade.create(grade_value: 9, student_id: jahaira.id, course_id: ar.id)

#Office Hours
oh1 = OfficeHour.create(week_day: "Monday", time: 13, instructor_id: chase.id)
oh2 = OfficeHour.create(week_day: "Tuesday", time: 14, instructor_id: sylwia.id)
oh3 = OfficeHour.create(week_day: "Wednesday", time: 12, instructor_id: eric.id)

puts "You're good to go!"
