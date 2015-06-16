class AddConfirmedToVisiter < ActiveRecord::Migration
  def change
    add_column :visiters, :confirmed, :string
  end
end
