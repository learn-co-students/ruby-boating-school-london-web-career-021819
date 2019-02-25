class Student

  attr_reader :first_name
  @@all = []
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name: name, status: status, instructor: instructor)
    BoatingTest.new(student: self, name: name, status: status, instructor: instructor)
  end

  def self.find_student(first_name)
    @@all.find { |student| student.first_name == first_name}
  end

  def tests
    BoatingTest.all.select { |tests| tests.student == self}
  end

  def grade_percentage
    passed_tests = tests.select { |test| test.status == "passed"}.length.to_f
    all_tests = tests.length.to_f
    (passed_tests/all_tests)*100.round
  end

end
