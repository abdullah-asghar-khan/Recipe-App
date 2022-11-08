class Recipe < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { minimum: 1, maximum: 100 }
  validates :description, presence: true, length: { minimum: 1, maximum: 1000 }
end
