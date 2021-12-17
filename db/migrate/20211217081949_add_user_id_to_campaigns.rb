class AddUserIdToCampaigns < ActiveRecord::Migration[6.1]
  def change
    add_column :campaigns, :user_id, :int
  end
end
