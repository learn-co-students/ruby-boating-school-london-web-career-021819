
# should initialize with Student (Object), a boating test name (String),
#a boating test status (String), and an Instructor (Object)
# BoatingTest.all returns an array of all boating tests

class BoatingTest
  attr_accessor :student, :test_name, :status, :instructor

  @@all = []

    def initialize(student, test_name, status, instructor)
      @student = student
      @test_name = test_name
      @status = status
      @instructor = instructor
      @@all << self
    end

    def self.all
      @@all
    end
end
