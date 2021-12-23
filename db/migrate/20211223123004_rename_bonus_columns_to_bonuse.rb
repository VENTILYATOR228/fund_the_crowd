class RenameBonusColumnsToBonuse < ActiveRecord::Migration[6.1]
  def change
    rename_column :bonuses, :bonus_name, :bonuse_name
    rename_column :bonuses, :bonus_description, :bonuse_description
    rename_column :bonuses, :bonus_price, :bonuse_price
    rename_column :user_bonuses, :bonus_id, :bonuse_id
  end
end
