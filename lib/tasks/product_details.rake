namespace :product_details do |ns|
  desc 'set products options'
  task create: :environment do
    PRODUCTS_OPTIONS = [
      {
        product_option_id: 1,
        name: "S"
      },
      {
        product_option_id: 2,
        name: "M"
      },
      {
        product_option_id: 3,
        name: "L"
      },
      {
        product_option_id: 4,
        name: "XL"
      }
    ]

    PRODUCTS_OPTIONS.each do |option|
      Product.all.each do |product|
        product_detail = ProductDetail.where(product_option_id: option[:product_option_id],product_id: product.id).first_or_initialize
        product_detail.assign_attributes({product_id: product.id, product_option_id: option[:product_option_id]}.except(:id))
        product_detail.save!
      end
    end
  end
end
