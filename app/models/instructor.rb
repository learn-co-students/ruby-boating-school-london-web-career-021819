# Instructor class
class Instructor
  @@all_instructors = []

  def self.all
    @@all_instructors
  end

  attr_reader :name

  def initialize(name)
    @name = name
    @@all_instructors << self
  end

  def pass_student(student, boating_name)
    studente = find_by_name_and_boating(student, boating_name)
    if studente
      studente.boating_status = 'passed'
    else
      BoatingTest.new(student, boating_name, 'passed', self)
    end
  end

  def fail_student(student, boating_name)
    studente = find_by_name_and_boating(student, boating_name)
    if studente
      studente.boating_status = 'failed'
    else
      BoatingTest.new(student, boating_name, 'failed', self)
    end
  end

  private

  def my_boating
    BoatingTest.all.select { |boat| boat.instructor == self }
  end

  def find_by_name_and_boating(student, boating_name)
    my_boating.find { |boat| boat.student == student && boat.boating_name == boating_name }
  end
end
