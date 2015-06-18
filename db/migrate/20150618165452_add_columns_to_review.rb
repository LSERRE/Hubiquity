class AddColumnsToReview < ActiveRecord::Migration
    def change
        add_column :reviews, :visiter_id, :integer
        add_column :reviews, :picture1_name, :string
        add_column :reviews, :picture2_name, :string
        add_column :reviews, :picture3_name, :string
        add_column :reviews, :picture4_name, :string
        add_column :reviews, :picture5_name, :string
        add_column :reviews, :picture6_name, :string
        add_column :reviews, :wholesomness_rating, :integer
        add_column :reviews, :wholesomness_comment, :string
        add_column :reviews, :neighberhood_rating, :integer
        add_column :reviews, :neighberhood_comment, :string
    end
end
