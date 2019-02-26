class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def pass_or_fail_student(student, name, status)
    result = BoatingTest.all.find do |test|
      test.student == student && test.name == name
      end
      if result
         result.status = status
       else
         # result = BoatingTest.new(student, name, self, "passed")
         result = student.add_boating_test(name, status, self)
      end
      result
    end
  end
