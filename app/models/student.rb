
class Student
  @@all = []
  attr_accessor :first_name

      def initialize(first_name)
        @first_name = first_name
        @@all << self
      end

      def self.all
        @@all
      end

      def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
      end

      def self.find_student(first_name)
        @@all.find {|student| student.first_name == first_name}
      end


      def my_tests
        BoatingTest.all.select { |test| test.student == self }
      end

      def grade_percentage
        passing_tests = my_tests.select { |test| test.status == "passed" }.length.to_f
        all_tests = my_tests.length.to_f
        passing_tests / all_tests * 100
  end
end
