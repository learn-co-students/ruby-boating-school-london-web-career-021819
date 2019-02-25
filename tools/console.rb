require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

student1 = Student.new("Stu")
student2 = Student.new("Sofia")
student3 = Student.new("Dan")

instructor1 = Instructor.new("Alex")
instructor2 = Instructor.new("Kian")
instructor3 = Instructor.new("Sal")

boatingtest1 = BoatingTest.new("testname1", "passed", student1, instructor1)
boatingtest1 = BoatingTest.new("testname1", "passed", student1, instructor1)
boatingtest1 = BoatingTest.new("testname1", "failed", student1, instructor1)
boatingtest2 = BoatingTest.new("testname2", "teststatus2", student2, instructor2)
boatingtest3 = BoatingTest.new("testname3", "teststatus3", student3, instructor3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
