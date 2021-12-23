class Area < ApplicationRecord
  has_many :campaign_areas
  has_many :campaigns, through: :campaign_areas
end
