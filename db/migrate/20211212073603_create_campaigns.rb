class CreateCampaigns < ActiveRecord::Migration[6.1]
  def change
    create_table :campaigns do |t|
      t.string :campaign_name
      t.text :description
      t.timestamps
    end
  end
end
