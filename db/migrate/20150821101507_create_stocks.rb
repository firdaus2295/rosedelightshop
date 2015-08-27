class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :product_id
      t.integer :quantity
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
