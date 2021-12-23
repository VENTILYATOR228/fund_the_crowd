class CreateCampaignAreas < ActiveRecord::Migration[6.1]
  def change
    create_table :campaign_areas do |t|
      t.integer :campaign_id
      t.integer :area_id
    end
  end
end
