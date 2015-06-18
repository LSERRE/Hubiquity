class AddFileTypeToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :picture1_content_type, :string
  end
end
