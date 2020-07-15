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

  def pass_student(student, name)
    BoatingTest.all.find do |test|
      if test.name == name && test.student == student
        test.status = 'passed'
        return test
      else
        new = BoatingTest.new(student, name, 'passed', self)
        return new
      end
    end
  end

  def fail_student(student, name)
    BoatingTest.all.find do |test|
      if test.name == name && test.student == student
        test.status = 'failed'
        return test
      else
        new = BoatingTest.new(student, name, 'failed', self)
        return new
      end
    end
  end
end
