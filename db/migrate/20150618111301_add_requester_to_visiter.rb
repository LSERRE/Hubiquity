class AddRequesterToVisiter < ActiveRecord::Migration
  def change
    add_column :visiters, :requester_id, :integer
  end
end
