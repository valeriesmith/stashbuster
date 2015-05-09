class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :company
      t.string :category
      t.string :size
      t.string :image, :default => nil

      t.timestamps null: false
    end
  end
end
