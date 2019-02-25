class Student
  attr_reader :first_name
  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name)
    @first_name = first_name
    self.class.all << self
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

  def self.find_student(first_name)
    self.all.find {|student| student.first_name == first_name}
  end

  def grade_percentage
    passed_boating_tests = BoatingTest.all.select{|boating_test| boating_test.status == "passed"}
    count_passed_boating_tests = passed_boating_tests.length
    count_boating_tests = BoatingTest.all.length
    percentage_passed = (count_passed_boating_tests/count_boating_tests.to_f)*100
  end
end
