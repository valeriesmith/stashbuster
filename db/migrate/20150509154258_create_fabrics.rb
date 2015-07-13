class CreateFabrics < ActiveRecord::Migration
  def change
    create_table :fabrics do |t|
      t.string :name
      t.string :color
      t.decimal :length, :precision => 4, :scale => 4
      t.integer :width
      t.integer :price
      t.string :content
      t.string :swatch, :default => nil
      t.string :source
     
      t.timestamps null: false
    end
  end
end
