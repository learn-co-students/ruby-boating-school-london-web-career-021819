
class BoatingTest

  attr_reader :student, :name
  attr_accessor :status

  @@all = []

def initialize(student, name, instructor, status)
 @student = student
 @name = name
 @status = status
 @instructor = instructor
 @@all << self
end

def self.all
  @@all
end

end
