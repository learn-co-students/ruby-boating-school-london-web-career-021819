class Instructor
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  # def pass_student(student, boating_test_name)
  #   BoatingTest.all.map! do |boating_test|
  #     if boating_test.student == student && boating_test.name == boating_test_name && boating_test.status != "passed"
  #       boating_test.status = "passed"
  #       return boating_test
  #     else
  #       return student.add_boating_test(boating_test_name, "passed", self)
  #     end
  #   end
  # end
  #
  # def fail_student(student, boating_test_name)
  #   BoatingTest.all.map! do |boating_test|
  #     if boating_test.student == student && boating_test.name == boating_test_name && boating_test.status != "failed"
  #       boating_test.status = "failed"
  #       return boating_test
  #     else
  #       return student.add_boating_test(boating_test_name, "failed", self)
  #     end
  #   end
  # end

  def test_student(student, boating_test_name)
    BoatingTest.all.select do |boating_test|
      boating_test.student == student && boating_test.name == boating_test_name
    end
  end

  def pass_student(student, boating_test_name)
    test_student(student, boating_test_name).map! do |boating_test|
      if boating_test.status != "passed"
        boating_test.status = "passed"
        return boating_test
      else
        return student.add_boating_test(boating_test_name, "passed", self)
      end
    end
  end

  def fail_student(student, boating_test_name)
    test_student(student, boating_test_name).map! do |boating_test|
      if boating_test.status != "failed"
        boating_test.status = "failed"
        return boating_test
      else
        return student.add_boating_test(boating_test_name, "failed", self)
      end
    end
  end




end
