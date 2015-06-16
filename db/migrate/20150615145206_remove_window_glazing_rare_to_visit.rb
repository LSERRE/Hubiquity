class RemoveWindowGlazingRareToVisit < ActiveRecord::Migration
  def change
    remove_column :visits, :windowGlazingRare, :integer
  end
end
