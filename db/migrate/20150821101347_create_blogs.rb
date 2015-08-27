class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :type
      t.string :title
      t.datetime :published_date
      t.text :content
      t.string :tag

      t.timestamps null: false
    end
  end
end
