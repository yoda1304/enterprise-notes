class CreateBadges < ActiveRecord::Migration[6.0]
  def change
    create_table :badges do |t|
      t.boolean :login_badge, :default => false
      t.integer :login_progress, :default => 0
      t.integer :login_level, :default => 0
      t.boolean :posts_badge, :default => false
      t.integer :posts_progress, :default => 0
      t.integer :posts_level, :default => 0
      t.boolean :courses_badge, :default => false
      t.integer :courses_progress, :default => 0
      t.integer :courses_level, :default => 0
      t.integer :profile_level, :default => 0

      t.timestamps
    end
  end
end
