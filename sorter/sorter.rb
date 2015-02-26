class Sorter

  attr_accessor :student_list

  def initialize(student_list)
    @student_list = student_list
  end

  def list
    p @student_list
  end

  def top_grade
    @top_student = ''
    @top_grade = 0.00

    @student_list.each do |name, grade|
      if grade > @top_grade
        @top_student = name
        @top_grade = grade
      end
    end

    p "#{@top_student} has the highest grade of #{@top_grade.to_s}"
  end

  def update(name, grade)
    @student_list[name] = grade
  end

  def delete(name)
    @student_list.delete(name)
  end

end


room10 = Sorter.new({'John' => 5.30, 'Jim' => 8.75, 'Jane' => 7.60})
room10.top_grade
room10.update('John', 8.76)
room10.top_grade
room10.update('Beauford', 8.79)
room10.top_grade
room10.delete('Beauford')
room10.top_grade