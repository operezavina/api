namespace :products do |ns|
  desc 'set products'
  task create: :environment do
    PRODUCTS = [
      {
        id: 1,
        name: "Gorra Gris",
        size: "S"
      },
      {
        id: 2,
        name: "Gorra Cafe",
        size: "S"
      },
      {
        id: 3,
        name: "Gorra Amarilla",
        size: "S"
      },
      {
        id: 4,
        name: "Gorra Roja",
        size: "S"
      },
      {
        id: 5,
        name: "Gorra Gris",
        size: "L"
      },
      {
        id: 6,
        name: "Gorra Cafe",
        size: "L"
      },
      {
        id: 7,
        name: "Gorra Amarilla",
        size: "L"
      },
      {
        id: 8,
        name: "Gorra Roja",
        size: "L"
      },
    ]

    PRODUCTS.each do |attrs|
      product = Product.where(id: attrs[:id]).first_or_initialize
      product.assign_attributes(attrs.except(:id))
      product.save!
    end
  end
end
