class BoatingTest
  attr_reader :student, :test, :instructor
  attr_accessor :test_status
  @@all = []
  def initialize(student, test, test_status, instructor)
    @student = student
    @test = test
    @test_status = test_status
    @instructor = instructor
    self.class.all << self
  end
  def self.all
    @@all
  end
end
