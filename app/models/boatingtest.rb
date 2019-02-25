class BoatingTest

  attr_accessor :student, :instructor, :test_name, :test_status

  @@all = []

  # set status to default, so it can be initialised without...
  def initialize(student, test_name, test_status="not complete", instructor)
    @student = student
    @test_name = test_name
    @test_status = test_status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

end
