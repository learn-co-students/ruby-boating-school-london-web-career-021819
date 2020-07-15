
class Student

  attr_accessor :first_name

  @@students = []

def initialize(first_name)
  @first_name = first_name
  @@students << self
end

def self.all
  @@students
end

def tests
  BoatingTest.all.select {|test|test.student == self}

def add_boating_test(name, instructor, status)
 BoatingTest.new(self, instructor, status)
end

def self.find_student(first_name)
  @@students.find{|first_name| student.first_name == first_name}
end

def grade_percentage
  passing_tests = tests.select {|test| test.status == "pass"}.length.to_f
  all_tests = tests.length.to_f
  passing_tests / all.tests * 100
end

end
