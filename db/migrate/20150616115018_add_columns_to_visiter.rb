class AddColumnsToVisiter < ActiveRecord::Migration
  def change
    add_column :visiters, :user_id, :integer
    add_column :visiters, :visit_id, :integer
    add_column :visiters, :confirmed, :boolean
  end
end
