class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_code
      t.float :price
      t.string :product_status
      t.string :brand
      t.string :descriptions

      t.timestamps null: false
    end
  end
end