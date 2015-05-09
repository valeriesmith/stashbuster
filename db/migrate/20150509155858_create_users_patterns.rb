class CreateUsersPatterns < ActiveRecord::Migration
  def change
    create_table :users_patterns do |t|
    	t.belongs_to :users
    	t.belongs_to :patterns
      	t.timestamps null: false
    end
  end
end


