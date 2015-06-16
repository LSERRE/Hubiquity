class RemoveColumnsToVisit < ActiveRecord::Migration
  def change
    remove_column :visits, :visitDate1, :datetime
    remove_column :visits, :visitDate2, :datetime
    remove_column :visits, :visitDate3, :datetime
  end
end
