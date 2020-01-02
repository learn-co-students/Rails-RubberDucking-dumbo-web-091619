class Student < ApplicationRecord
    has_many :ducks
    def self.student_ids
        @students = Student.all
        @students.map do |student|
            student.id
        end
    end

end
