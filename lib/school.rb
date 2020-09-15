# code here!
require "pry"
class School 
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name,grade)
        if @roster[grade]
            @roster[grade].push(student_name)
        else
            @roster[grade] = Array.new.push(student_name)
        end
        @roster
    end

    def grade(level)
        @roster[level]
    end

    def sort
        @roster.each do |grade,student|
            @roster[grade] = student.sort
        end
    end
end