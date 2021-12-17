class Campaign < ApplicationRecord
  belongs_to :user
  validates :campaign_name, presence: true, length: { minimum: 5, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end