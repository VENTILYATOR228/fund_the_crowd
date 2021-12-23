class User < ApplicationRecord
  has_many :campaigns, dependent: :destroy
  has_many :user_bonuses
  has_many :bonuses, through: :user_bonuses
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    return "#{first_name} #{last_name}" if first_name || last_name
    "Anonymous"
  end
end
