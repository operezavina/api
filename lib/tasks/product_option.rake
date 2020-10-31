namespace :product_options do |ns|
  desc 'set products options'
  task create: :environment do
    PRODUCTS_OPTIONS = [
      {
        id: 1,
        name: "S"
      },
      {
        id: 2,
        name: "M"
      },
      {
        id: 3,
        name: "L"
      },
      {
        id: 4,
        name: "XL"
      },
      {
        id: 5,
        name: "XS"
      }
    ]

    PRODUCTS_OPTIONS.each do |attrs|
      product = ProductOption.where(id: attrs[:id]).first_or_initialize
      product.assign_attributes(attrs.except(:id))
      product.save!
    end
  end
end
