require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Students
alex = Student.new('Alex')
jal = Student.new('Jalis')
fede = Student.new('Fede')
den = Student.new('Dennis')
matt = Student.new('Matt')
spongebob = Student.new('Spongebob')
patrick = Student.new('Patrick')

# Instructors
puff = Instructor.new('Ms.Puff')
krabs = Instructor.new('Mr.Krabs')
enea = Instructor.new('Enea')

# Boating tests created by Student class
no_crashing = spongebob.add_boating_test("Don't Crash 101", 'pending', puff)
power_steering_failure = patrick.add_boating_test('Power Steering 202', 'failed', puff)
power_steering_pass = patrick.add_boating_test('Power Steering 201', 'pending', krabs)

# Random create BoatingTest
test01 = BoatingTest.new(alex, 'Dive', 'passed', krabs)
test02 = BoatingTest.new(alex, 'Chem', 'failed', enea)
test03 = BoatingTest.new(alex, 'Math', 'passed', krabs)
test04 = BoatingTest.new(alex, 'Hunt', 'passed', krabs)
test05 = BoatingTest.new(alex, 'Smith', 'failed', enea)
test06 = BoatingTest.new(alex, 'Craft', 'pending', krabs)
test07 = BoatingTest.new(alex, 'IAEUWY', 'failed', enea)
# test08 = BoatingTest.new(alex, 'Smith', 'failed', enea)
# test09 = BoatingTest.new(alex, 'Smith', 'failed', enea)
# test10 = BoatingTest.new(alex, 'Smith', 'failed', enea)

# For pass_student method
pass_test_st = krabs.pass_student(patrick, 'Power Steering 201')
binding.pry
0 # leave this here to ensure binding.pry isn't the last line
