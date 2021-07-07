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

  def pass_or_fail_student(student, test_name, test_status)
    found_test = BoatingTest.all.find {|x| x.name == test_name && x.student == student}
    if found_test
      found_test.status = test_status
    else
      found_test = BoatingTest.new(self, test_status, student, instructor)
    end
    found_test
  end

end
