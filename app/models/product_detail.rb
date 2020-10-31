class ProductDetail < ApplicationRecord
  belongs_to :product
  belongs_to :product_option

  delegate :name, to: :product_option, prefix: true

  attribute :product_option_name
end
