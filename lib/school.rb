require 'pry'

class School
    attr_reader :roster
    
    def initialize(school)   
        @school = school
        @roster = {}
    end 
   
    def add_student(student, grade) 
        if @roster[grade]
          @roster[grade] << student
        else
          # @roster[grade] = []
          # @roster[grade] << student
        end
        
    end
     
    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash  = Hash.new
        @roster.map do | grade, student_array | 
            sorted_hash[grade] = student_array.sort 
        end
        sorted_hash
    end
        
    
   
end
