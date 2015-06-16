class RemoveBathroomsToVisit < ActiveRecord::Migration
  def change
    remove_column :visits, :bathrooms, :integer
  end
end
