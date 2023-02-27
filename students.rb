require 'active_record'

class Student < ActiveRecord::Base

end 

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/students.sqlite"
)

column_names = Student.column_names
puts column_names

student = Student.new(name: 'Jon')
student.save
puts student.name

student = Student.find_by(name: 'Jon')
puts student.name

student = Student.find(1)
puts student.name