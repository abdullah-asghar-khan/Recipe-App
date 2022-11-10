class Food < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods

  validates :name, :measurment_unit, :price, :quantity, presence: true
end
