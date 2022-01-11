class Bonuse < ApplicationRecord
  belongs_to :campaign
  has_many :user_bonuses
  has_many :users, through: :user_bonuses
  validates :name, presence: true, length: { minimum: 2, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  validates :price, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 100,  only_integer: true }
  validates :campaign_id, presence: true
end
