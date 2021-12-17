class User < ApplicationRecord
  has_many :campaigns, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
