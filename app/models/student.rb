class Student
  attr_reader :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

  def self.find_student(name)
    @@all.find {|student| student.first_name == name}
  end

  def grade_percentage
    pass_count = 0.0
    total_count = 0.0
    BoatingTest.all.select do |test|
      if test.student == self
        if test.status == 'passed'
          pass_count += 1
          total_count += 1
        else
          total_count +=1
        end
      end
    end
    (pass_count/total_count)*100
  end
end
