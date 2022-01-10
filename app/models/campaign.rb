class Campaign < ApplicationRecord
  belongs_to :user
  has_many :bonuses
  has_many :campaign_areas
  has_many :areas, through: :campaign_areas
  validates :name, presence: true, length: { minimum: 2, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
