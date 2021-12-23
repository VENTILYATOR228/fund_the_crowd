class CreateBonuses < ActiveRecord::Migration[6.1]
  def change
    create_table :bonuses do |t|
      t.string :bonus_name
      t.text :bonus_description
      t.integer :bonus_price
      t.timestamps
    end
  end
end
