class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :address1
      t.string :address2
      t.string :postcode
      t.string :city
      t.integer :state_id
      t.string :mobile_no
      t.string :phone_no
      t.string :status
      t.string :email

      t.timestamps null: false
    end
  end
end
