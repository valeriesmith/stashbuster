class CreatePatternstores < ActiveRecord::Migration
  def change
    create_table :patternstores do |t|
    	t.belongs_to :user
      	t.belongs_to :pattern

      t.timestamps null: false
    end
  end
end
