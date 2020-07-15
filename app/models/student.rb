# Student class
class Student
  @@all_students = []

  def self.all
    @@all_students
  end

  attr_reader :first_name

  def initialize(first_name)
    @first_name = first_name
    self.class.all << self
  end

  def add_boating_test(boating_name, boating_test, instructor)
    BoatingTest.new(self, boating_name, boating_test, instructor)
  end

  def grade_percentage
    my_tests_count = my_tests.count
    passed_count = my_tests.select { |boat| boat.boating_status == 'passed' }.count
    (passed_count.to_f / my_tests_count.to_f * 100).round(2)
  end

  def self.find_student(f_name)
    all.select { |s| s.first_name == f_name }
  end

  private

  def my_tests
    BoatingTest.all.select { |boat| boat.student == self }
  end
end
