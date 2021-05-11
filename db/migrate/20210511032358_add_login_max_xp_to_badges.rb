class AddLoginMaxXpToBadges < ActiveRecord::Migration[6.0]
  def change
    add_column :badges, :login_max_xp, :integer, :default => 3
  end
end
