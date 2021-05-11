class User < ApplicationRecord
    has_many :notes
    has_secure_password

    scope :search, -> (term) { where('first_name LIKE ? OR last_name LIKE ?', "#{term}%", "#{term}%")}

    ROLES = [['admin', :admin],['member', :member]]

    def role?(authorized_role)
      return false if role.nil?
      role.to_sym == authorized_role
    end

    def self.authenticate(email,password)
        find_by_email(email).try(:authenticate, password)
    end

    def proper_name

        first_name + " " + last_name

    end

end
