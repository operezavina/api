namespace :product_details do |ns|
  desc 'set products options'
  task create: :environment do
    ProductOption.all.each do |option|
      Product.all.each do |product|
        product_detail = ProductDetail.where(product_option_id: option.id,product_id: product.id).first_or_initialize
        product_detail.assign_attributes({product_id: product.id, product_option_id: option.id}.except(:id))
        product_detail.save!
      end
    end
  end
end
