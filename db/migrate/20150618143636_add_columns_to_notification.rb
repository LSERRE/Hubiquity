class AddColumnsToNotification < ActiveRecord::Migration
  def change
    add_column :notifications, :sender_id, :integer
    add_column :notifications, :receiver_id, :integer
    add_column :notifications, :type, :string
  end
end
