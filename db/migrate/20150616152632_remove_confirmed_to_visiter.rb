class RemoveConfirmedToVisiter < ActiveRecord::Migration
  def change
    remove_column :visiters, :confirmed, :boolean
  end
end
