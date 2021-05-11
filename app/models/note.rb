class Note < ApplicationRecord
  belongs_to :user
  has_many :course_notes
  has_many :courses, through: :course_notes

  scope :search, -> (term) { where('title LIKE ? OR content LIKE ?', "%#{term}%", "%#{term}%")}

end
