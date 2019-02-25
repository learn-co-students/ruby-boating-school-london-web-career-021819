
class Instructor

attr_accessor :name

@@instructors = []

def initialize(name)
  @name = name
  @@instructors << self
end

def self.all
  @@instructors
end

def pass_student(student, name)
 found_test = BoatingTest.all.find{|test|test.name == name && test.student == student}
  if found_test
    found_test.status == "pass"
  else
    found_test = BoatingTest.new(student, name, self, "pass")
  end
  found_test
end

def fail_student(student, name)
  found_test = BoatingTest.all.find{|test|test.name == name && test.student == student}
  if found_test
    found_test.status == "fail"
  else
    found_test = BoatingTest.new(student, name, self, "fail")
  end
  found_test
end

end
