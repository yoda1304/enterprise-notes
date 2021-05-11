class AddPostsMaxXpToBadges < ActiveRecord::Migration[6.0]
  def change
    add_column :badges, :posts_max_xp, :integer, :default => 10
  end
end
