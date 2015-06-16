class AddDateTimeToVisiter < ActiveRecord::Migration
  def change
    add_column :visiters, :visitDate, :date
    add_column :visiters, :visitTime, :time
  end
end
