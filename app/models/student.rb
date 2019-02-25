class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, student, instructor)
    BoatingTest.new(test_name, test_status, self, instructor)
  end

  def self.find_student
    Student.all.select {|x| x.first_name == self}
  end

  def grade_percentage
    student = BoatingTest.all.select {|x| x.student == self}
    student_test_total = student.map {|x| x.test_status}.count
    student_pass_total = student.map {|x| x.test_status}.count("passed")
    average = student_pass_total.to_f/student_test_total.to_f
    average * 100
  end

end
