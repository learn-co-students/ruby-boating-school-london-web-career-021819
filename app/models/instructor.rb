class Instructor

  @@all = []
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def pass_or_fail_student(student, name, status)
    found = BoatingTest.all.find {|test| test.student = student && test.name == name}
    if found
      found.status = status
    else
      found = BoatingTest.new(student: student, name: name, status: status, instructor: self)
    end
    found
  end

end
