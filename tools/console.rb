require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

student1 = Student.new("Spongebob")
student2 = Student.new("Patrick")
student3 = Student.new("Octopus")
student4 = Student.new("Rock")

instructor1 = Instructor.new("Ms.Puff")
instructor2 = Instructor.new("Mr.Krabs")
instructor3 = Instructor.new("Mr. Shell")
instructor4 = Instructor.new("Ms. Neon")

test1 = BoatingTest.new(student1, "Don't Crash 101", instructor1)
test2 = BoatingTest.new(student2, "Power Steering 201", instructor2)
test3 = BoatingTest.new(student3, "Power Steering 202", "pass")
test4 = BoatingTest.new(student4, "Power Steering 203", "fail")

# no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
