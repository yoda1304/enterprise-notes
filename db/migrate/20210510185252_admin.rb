class Admin < ActiveRecord::Migration[6.0]
  def up
    admin = User.new
    admin.first_name = "Jonathan"
    admin.last_name = "Monroe"
    admin.email = "yoda1304@gmail.com"
    admin.school = "CMU"
    admin.password = "secret"
    admin.password_confirmation = "secret"
    admin.save!
  end
  def down
    admin = User.find_by_email "yoda1304@gmail.com"
    User.delete admin
  end
end
