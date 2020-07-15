class Student

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)

  end

  def self.find_student(name)
    Student.all.find {|student| student.name == name}
    # @@all.find
  end

  #step 2: create the percentage
  def grade_percentage
    passing_tests = tests.select {|test| test.status == "passed"}.length.to_f
    all_tests = tests.length.to_f
    passing_tests / all_tests * 100
  end

  #step 1: helper method to return all tests for that student
  def tests
    BoatingTest.all.select {|test| test.student == self}
  end

end
