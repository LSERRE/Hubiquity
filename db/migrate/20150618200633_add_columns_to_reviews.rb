class AddColumnsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :requester_id, :integer
    add_column :reviews, :visiter_user_id, :integer
  end
end
