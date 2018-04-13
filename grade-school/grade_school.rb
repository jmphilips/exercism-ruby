class School

  def initialize()
    self.roster = {}
  end

  def students(grade)
    return [] if roster[grade].nil?
    roster[grade].sort
  end

  def students_by_grade
    sorted_grades.map do |grade|
      grade_to_hash(grade, students(grade))
    end
  end

  def add(name, grade)
    self[grade] << name
  end

  private

  attr_accessor :roster

  def[](grade)
    return roster[grade] if roster.keys.include?(grade)
    roster[grade] = []
  end

  def grade_to_hash(grade, students_arr)
    { grade: grade, students: students_arr }
  end

  def sorted_grades
    roster.keys.sort
  end
end