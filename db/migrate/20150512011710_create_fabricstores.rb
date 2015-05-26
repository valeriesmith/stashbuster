class CreateFabricstores < ActiveRecord::Migration
  def change
    create_table :fabricstores do |t|
    	t.belongs_to :user
    	t.belongs_to :fabric

      	t.timestamps null: false
    end
  end
end
