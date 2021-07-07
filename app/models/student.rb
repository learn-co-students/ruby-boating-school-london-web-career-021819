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

  def add_boating_test(test, status, instructor)
    BoatingTest.new(test,self, status, instructor)
  end

  def self.find_student(first_name)
    Student.all.find{|student| student.first_name == first_name}
  end

  def grade_percentage
    total_test = BoatingTest.all.select{|test| test.student == self}
    test_passed  = total_test.select{|test| test.status == "passed"}
    (test_passed.length.to_f / total_test.length.to_f) * 100
  end


end
