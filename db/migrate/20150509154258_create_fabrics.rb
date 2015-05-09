class CreateFabrics < ActiveRecord::Migration
  def change
    create_table :fabrics do |t|
      t.string :name
      t.string :color
      t.integer :length
      t.integer :width
      t.integer :price
      t.string :content

      t.timestamps null: false
    end
  end
end
