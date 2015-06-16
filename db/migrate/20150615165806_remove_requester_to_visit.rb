class RemoveRequesterToVisit < ActiveRecord::Migration
  def change
    remove_column :visits, :requester, :integer
  end
end
