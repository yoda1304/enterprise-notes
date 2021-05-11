class AddCoursesMaxXpToBadges < ActiveRecord::Migration[6.0]
  def change
    add_column :badges, :courses_max_xp, :integer, :default => 5
  end
end
