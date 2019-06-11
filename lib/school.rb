class School
    attr_reader :name, :roster
    attr_accessor
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end 

    def grade(grade)
        roster[grade] 
    end

    def sort
        new_roster = {}
        roster.each do | grade, student_array |
            new_roster[grade] = student_array.sort
        end
        new_roster
    end 
end