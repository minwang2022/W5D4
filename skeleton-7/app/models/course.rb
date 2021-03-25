# create_table "courses", force: :cascade do |t|
#     t.string "name"
#     t.integer "prereq_id"
#     t.integer "instructor_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end


class Course < ApplicationRecord

    has_many :enrollments,
    foreign_key: :course_id,
    primary_key: :id, 
    class_name: 'Enrollment'

    has_many :enrolled_students,
    foreign_key: :student_id,
    primary_key: :id, 
    class_name: 'Enrollment'

    belongs_to :prerequisite,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: 'Course'

    belongs_to :instuctor,
        primary_key: :id,
        foreign_key: :instructor_id,
        class_name: 'Course'
end
