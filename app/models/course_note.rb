class CourseNote < ApplicationRecord
  belongs_to :course
  belongs_to :note
end
