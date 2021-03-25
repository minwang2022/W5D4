# create_table :enrollments do |t|
#     t.integer :course_id
#     t.integer :student_id

#     t.timestamps

class Enrollment < ApplicationRecord
    


    belongs_to :user,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :User
   

    belongs_to :course,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Course
end
