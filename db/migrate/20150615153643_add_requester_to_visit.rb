class AddRequesterToVisit < ActiveRecord::Migration
  def change
    add_column :visits, :requester, :integer
  end
end
