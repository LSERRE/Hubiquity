class AddTelephoneToVisit < ActiveRecord::Migration
  def change
    add_column :visits, :telephone, :string
  end
end
