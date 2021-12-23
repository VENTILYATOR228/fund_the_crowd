class Bonuse < ApplicationRecord
  belongs_to :campaign
  has_many :user_bonuses
  has_many :users, through: :user_bonuses
end
