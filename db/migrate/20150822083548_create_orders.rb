class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.datetime :order_date
      t.string :payment_type
      t.string :order_status
      t.datetime :delivery_date

      t.timestamps null: false
    end
  end
end
