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

  def pass_or_fail_student(student, test_name, test_status)
    found_test = BoatingTest.all.find { |test| test.test_name == test_name }
    if found_test # if it exists (its an object already) its truthy
      found_test.test_status = test_status
    else
      found_test = BoatingTest.new(student, test_name, test_status, self)
    end
    #either way, set the new test/status of existing test as a variable so it can be returned outside the if/else statement
    found_test
  end

end
