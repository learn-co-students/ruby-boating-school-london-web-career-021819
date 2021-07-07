class Instructor
  @@all = []
  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end


    def pass_student(student,test)
       check_boating_test = BoatingTest.all.find{|check_test| check_test.student == student && check_test.test == test}
        if check_boating_test
          check_boating_test.status == "passed"
          return check_boating_test
        else
        return  BoatingTest.new(test,student,"passed", self)

        # def pass_or_fail_student
        #   found_test = BoatingTest.all.find{|test| test.name ==name && test.student ==Student}
        #   if found_test
        #     found_test.status = status
        #   else
        #     found_test = BoatingTest.new(Student,name, self, status)
        #   end
        #   found_test
        # end

        end
    end
end
