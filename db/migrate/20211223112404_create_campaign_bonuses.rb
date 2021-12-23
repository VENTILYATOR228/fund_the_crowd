class AddBonusesIdToUserBonuses < ActiveRecord::Migration[6.1]
  def change
    add_column :user_bonuses, :bonus_id, :int
  end
end
