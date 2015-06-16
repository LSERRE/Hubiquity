class AddWindowGlazingRateToVisit < ActiveRecord::Migration
  def change
    add_column :visits, :windowGlazingRate, :integer
  end
end
