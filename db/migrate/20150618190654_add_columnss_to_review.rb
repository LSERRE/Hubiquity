class AddColumnssToReview < ActiveRecord::Migration
  def change
  	add_column :reviews, :picture2_file_name, :string
  	add_column :reviews, :picture2_content_type, :string
  	add_column :reviews, :picture3_file_name, :string
  	add_column :reviews, :picture3_content_type, :string
  	add_column :reviews, :picture4_file_name, :string
  	add_column :reviews, :picture4_content_type, :string
  	add_column :reviews, :picture5_file_name, :string
  	add_column :reviews, :picture5_content_type, :string
  	add_column :reviews, :picture6_file_name, :string
  	add_column :reviews, :picture6_content_type, :string

  	add_column :reviews, :issue1_picture_file_name, :string
  	add_column :reviews, :issue1_picture_content_type, :string
  	add_column :reviews, :issue2_picture_file_name, :string
  	add_column :reviews, :issue2_picture_content_type, :string
  end
end
