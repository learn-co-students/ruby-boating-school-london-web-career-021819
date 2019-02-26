require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Student
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
laura= Student.new("Laura")
shanna= Student.new("Shanna")

# Instructor
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

# BoatingTest
test1 = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
test2 = patrick.add_boating_test("Power Steering 202", "failed", puff)
test3 = patrick.add_boating_test("Power Steering 201", "passed", krabs)
test4 = laura.add_boating_test("My first test", "failed", puff)

# pass_or_fail_student
puff.pass_or_fail_student(spongebob, "Don't Crash 101", "passed")


binding.pry
"Ta-da!"
