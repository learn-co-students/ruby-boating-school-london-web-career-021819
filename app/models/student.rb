class Student
attr_reader :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_student(name)
    Student.all.select {|student| student.first_name == name}
  end

  def add_boating_test(test, status, instructor)
    BoatingTest.new(self, test, status, instructor)
  end

  def grade_percentage
    tests = BoatingTest.all.select {|test| test.student == self}.count.to_f
    passed = BoatingTest.all.select {|test| test.student == self && test.test_status == "passed"}.count.to_f
    ((passed/tests)*100).round(2)
  end

end
