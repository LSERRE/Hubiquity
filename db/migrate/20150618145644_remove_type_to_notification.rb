class RemoveTypeToNotification < ActiveRecord::Migration
  def change
    remove_column :notifications, :type, :string
  end
end
