class Note < ApplicationRecord
  belongs_to :user

  scope :search, -> (term) { where('title LIKE ? OR content LIKE ?', "%#{term}%", "%#{term}%")}

end
