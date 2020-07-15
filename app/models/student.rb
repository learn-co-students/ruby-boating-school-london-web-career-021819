class Student
  attr_reader :name

  @@students = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@students
  end

  def self.find_student(name)
    all.find {|student| student.name == name}
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def grade_percentage
    passed = status_count('passed')
    failed = status_count('failed')
    total = passed + failed
    passed/total * 100
  end

  def boating_tests
    BoatingTest.all.select {|test| test.student == self}
  end

  def status_count(status)
    boating_tests.select {|test| test.status == status}.count.to_f
  end

  def find_test_by_name(test_name)
    boating_tests.find { |test| test.test_name == test_name }
  end
end
