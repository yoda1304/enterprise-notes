class User < ApplicationRecord
    has_many :notes

    scope :search, -> (term) { where('first_name LIKE ? OR last_name LIKE ?', "#{term}%", "#{term}%")}

    private



end
