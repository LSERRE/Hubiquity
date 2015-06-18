class AddFilenameToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :picture1_file_name, :string
  end
end
