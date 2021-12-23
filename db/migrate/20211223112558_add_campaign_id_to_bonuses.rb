class AddCampaignIdToBonuses < ActiveRecord::Migration[6.1]
  def change
    add_column :bonuses, :campaign_id, :int
  end
end
