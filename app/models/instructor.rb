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

      def my_tests
        BoatingTest.all.select {|test| test.instructor == self}
      end

      def pass_or_fail_student(student, test_name, status)
          found_test = my_tests.find {|test| test.student == student && test.test_name == test_name}
          if found_test
            found_test.status = status
          else
            found_test = BoatingTest.new(student, test_name, "pass", self)
          end
          found_test
      end
end
