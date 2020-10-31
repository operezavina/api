class ProductOption < ApplicationRecord
  has_many :products_details
  has_many :products, through: :products_details
end
