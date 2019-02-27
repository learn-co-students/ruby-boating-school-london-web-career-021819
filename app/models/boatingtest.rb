class BoatingTest
  attr_reader :student, :test, :status, :instructor

  @@all = []
  def initialize(test,student,status, instructor)
    @test =test
    @student = student
    @status = status
    @instructor = instructor
    @@all  << self
  end

  def self.all
    @@all
  end


end
