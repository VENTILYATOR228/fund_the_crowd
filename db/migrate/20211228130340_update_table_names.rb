class UpdateTableNames < ActiveRecord::Migration[6.1]
  def change
    rename_column :areas, :area_name, :name
    rename_column :bonuses, :bonuse_name, :name
    rename_column :bonuses, :bonuse_description, :description
    rename_column :bonuses, :bonuse_price, :price
    rename_column :campaigns, :campaign_name, :name
  end
end
