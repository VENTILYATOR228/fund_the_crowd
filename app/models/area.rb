class Area < ApplicationRecord
  has_many :campaign_areas
  has_many :campaigns, through: :campaign_areas
  validates :name, presence: true, length: { minimum: 2, maximum: 25 }
  validates_uniqueness_of :name
end
