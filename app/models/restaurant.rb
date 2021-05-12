class Restaurant < ApplicationRecord
  has_many :reviews 
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, :phone_number, presence: true
  validates :categories, inclusion { in: CATEGORIES }
end
