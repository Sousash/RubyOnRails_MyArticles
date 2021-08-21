class Category < ApplicationRecord
  has_many :has_categories
  has_many :categories, through: :has_categories
end
