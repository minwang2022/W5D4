# create_table :users do |t|
#     t.string :name
    
#     t.timestamps

class User < ApplicationRecord


    has_many :enrollment,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment
    
    has_many :enrolled_courses,
        through: :enrollment,
        source: :course 
end
