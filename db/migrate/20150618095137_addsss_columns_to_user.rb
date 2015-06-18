class AddsssColumnsToUser < ActiveRecord::Migration
  def change
  	 add_column :users, :rating, :float
  	 add_column :users, :account_balance, :float
  	 add_column :users, :default_city, :string
  	 add_column :users, :alert_zone, :integer
  end
end
