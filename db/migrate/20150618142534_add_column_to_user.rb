class AddColumnToUser < ActiveRecord::Migration
  def change
  	remove_column :users, :rating, :float
    add_column :users, :rating, :integer
  end
end
