class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.string :code
      t.string :descriptions

      t.timestamps null: false
    end
  end
end
