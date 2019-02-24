class Instructor
attr_reader :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(test_name, student)
    tests = BoatingTest.all.select {|tests| test_name == tests.test_name}
    tests.map {|test| test.test_status = "passed"}
      if tests == []
        BoatingTest.new(student, test_name, "passed", self)
      else
        tests
      end
  end

  def fail_student(test_name, student_name)
    test = BoatingTest.all.select {|test| test_name == test.test_name}
    test.map {|test| test.test_status = "failed"}
      if test == []
        BoatingTest.new(student_name, test_name, "failed", self)
      else
        test
      end
  end

end
