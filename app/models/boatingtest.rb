class BoatingTest
  attr_reader :student, :name, :instructor
  attr_accessor :status
  @@all = []

  def self.all
    @@all
  end

  def initialize(student, name, status, instructor)
    @student = student
    @name = name
    @status = status
    @instructor = instructor
    self.class.all << self
  end


end
