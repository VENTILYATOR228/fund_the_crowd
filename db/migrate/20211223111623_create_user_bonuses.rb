class CreateUserBonuses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_bonuses do |t|
      t.integer :user_id
    end
  end
end
