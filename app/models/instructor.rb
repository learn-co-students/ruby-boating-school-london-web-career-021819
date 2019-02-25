class Instructor
  attr_reader :name

  @@instructors = []

  def initialize(name)
    @name = name
    @@instructors << self
  end

  def self.all
    @@instructors
  end

  # TODO: add #pass_student
  def pass_student(student, test_name)
    result = student.find_test_by_name(test_name)
    if result
      result.status = 'passed'
    else
      add_boating_test(test_name, 'passed', student)
    end
  end

  def fail_student(student, test_name)
    result = student.find_test_by_name(test_name)
    if result
      result.status = 'failed'
    else
      add_boating_test(test_name, 'failed', student)
    end
  end

  def add_boating_test(test_name, status, student)
    BoatingTest.new(student, test_name,status, self)
  end
end
