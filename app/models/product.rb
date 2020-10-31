class Product < ApplicationRecord
  has_many :product_details
  has_many :product_options, through: :product_details
end
