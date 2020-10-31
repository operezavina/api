namespace :products do |ns|
  desc 'set products'
  task create: :environment do
    PRODUCTS = [
      {
        id: 1,
        name: "Gorra Gris"
      },
      {
        id: 2,
        name: "Gorra Cafe"
      },
      {
        id: 3,
        name: "Gorra Amarilla"
      },
      {
        id: 4,
        name: "Gorra Roja"
      },
      {
        id: 5,
        name: "Gorra Gris"
      },
      {
        id: 6,
        name: "Gorra Cafe"
      },
      {
        id: 7,
        name: "Gorra Amarilla"
      },
      {
        id: 8,
        name: "Gorra Roja"
      },
    ]

    PRODUCTS.each do |attrs|
      product = Product.where(id: attrs[:id]).first_or_initialize
      product.assign_attributes(attrs.except(:id))
      product.save!
    end
  end
end
