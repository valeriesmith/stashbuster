class CreateUsersFabrics < ActiveRecord::Migration
  def change
    create_table :users_fabrics do |t|
    	t.belongs_to :users
    	t.belongs_to :fabrics

     	t.timestamps null: false
    end
  end
end
