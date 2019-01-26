class Product < ApplicationRecord
  belongs_to :category
  validates_presence_of :category, :name, :price
end
