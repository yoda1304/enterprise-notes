class Badges < ActiveRecord::Migration[6.0]
  def up
    jonathan_badges = Badge.new
    jonathan_badges.user_id = User.find(1).id
    jonathan_badges.save!
  end
  def down
    jonathan_badges = Badge.find(1)
    Badges.delete jonathan_badges
  end
end
