# BoatingTest class
class BoatingTest
  @@all_boating_tests = []

  def self.all
    @@all_boating_tests
  end
  attr_accessor :boating_status
  attr_reader :student, :boating_name, :instructor

  def initialize(student, boating_name, boating_status, instructor)
    @student = student
    @boating_name = boating_name
    @boating_status = boating_status
    @instructor = instructor
    @@all_boating_tests << self
  end
end
