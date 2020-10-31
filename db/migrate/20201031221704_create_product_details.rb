class CreateProductDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :product_details do |t|
      t.references :product, null: false, foreign_key: true
      t.references :product_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
