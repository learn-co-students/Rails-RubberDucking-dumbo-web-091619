class Student < ApplicationRecord
    has_many :ducks

    def self.students_id
        Student.all.map do |student|
            student.id
        end
    end
end
