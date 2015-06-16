class AddColumnsDateToVisit < ActiveRecord::Migration
  def change
    add_column :visits, :visitDate1, :date
    add_column :visits, :visitTime1, :time
    add_column :visits, :visitTime2, :time
    add_column :visits, :visitDate2, :date
    add_column :visits, :visitDate3, :date
    add_column :visits, :visitTime3, :time
  end
end
