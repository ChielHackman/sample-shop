class Category < ApplicationRecord
  validates_presence_of :name
  has_many :products
  extend FriendlyId
  friendly_id :name, use: :slugged
end
