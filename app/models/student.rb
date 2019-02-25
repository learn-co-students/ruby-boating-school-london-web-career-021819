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

  # 3 possible ways to call the student array:
  def self.find_student(first_name)
    @@all.find { |student| student.first_name == first_name }
    # Student.find
    # self.all.find
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  # helper method to get the particular student's test
  def tests
    BoatingTest.all.select { |test| test.student == self }
  end

  # helper method #tests used here:
  def grade_percentage
    # get the number of passing tests as a float
    passing_tests = tests.select { |test| test.test_status == "passed" }.length.to_f
    # get total number of all that students tests
    all_tests = tests.length.to_f
    # calculate their passing_tests as a % of their total tests
    passing_tests / all_tests * 100
  end

end
