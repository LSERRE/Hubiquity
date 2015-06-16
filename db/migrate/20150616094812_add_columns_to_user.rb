class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :bio, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :telephone, :string
  end
end
