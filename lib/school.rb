class School

attr_accessor :school, :roster

def initialize(name, roster = {})
    @school = name
    @roster = roster
end

def add_student(student_name, grade)
    if !self.roster[grade]
    self.roster[grade] = []
    end
    self.roster[grade]<<student_name
    
end

def grade(grade_of_students)
    self.roster[grade_of_students]
end

def sort
    sorted = {}
    roster.each do |grade, students|
        sorted[grade] = students.sort
    end
    sorted
end

end