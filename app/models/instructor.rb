class Instructor
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end
  def self.all
    @@all
  end
  def test_student(student, test_name)
    BoatingTest.all.select do |boating_test|
      boating_test.student == student && boating_test.test == test_name
    end
  end
  def pass_student(student, test)
    test_student(student, test).each do |boating_test|
        boating_test.test_status = "passed"
    end
  end

    def fail_student(student, test)
      test_student(student, test).each do |boating_test|
          boating_test.test_status = "failed"
      end
    end
end
