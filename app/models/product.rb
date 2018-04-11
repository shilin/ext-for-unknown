class Product < ApplicationRecord
  belongs_to :category

  validates :name, :price, presence: true
  validates :name, uniqueness: true

  validates :price, numericality: { greater_than: 0 }
end
