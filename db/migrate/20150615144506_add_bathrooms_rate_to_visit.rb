class AddBathroomsRateToVisit < ActiveRecord::Migration
  def change
    add_column :visits, :bathroomsRate, :integer
  end
end
