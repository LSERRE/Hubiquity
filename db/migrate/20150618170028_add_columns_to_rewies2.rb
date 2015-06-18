class AddColumnsToRewies2 < ActiveRecord::Migration
  	def change
        add_column :reviews, :brooker_rating, :integer
        add_column :reviews, :brooker_comment, :string
        add_column :reviews, :furniture_rating, :integer
        add_column :reviews, :furniture_comment, :string
        add_column :reviews, :bathrooms_rating, :integer
        add_column :reviews, :bathrooms_comment, :string
        add_column :reviews, :light_rating, :integer
        add_column :reviews, :light_comment, :string
        add_column :reviews, :noise_pollution_rating, :integer
        add_column :reviews, :noise_pollution_comment, :string
        add_column :reviews, :electricity_rating, :integer
        add_column :reviews, :electicity_comment, :string
        add_column :reviews, :pipework_comment, :string
        add_column :reviews, :pipework_rating, :integer
        add_column :reviews, :issue1_title, :string
        add_column :reviews, :issue1_comment, :string
        add_column :reviews, :issue2_title, :string
        add_column :reviews, :issue2_comment, :string
        add_column :reviews, :answer1, :string
        add_column :reviews, :answer2, :string
        add_column :reviews, :answer3, :string
        add_column :reviews, :answer4, :string
        add_column :reviews, :conclusion, :string
        add_column :reviews, :final_rating, :integer
        add_column :reviews, :review_rating, :integer
        add_column :reviews, :review_comment, :string
    end

    def self.up
        change_table :reviews do |t|
            t.attachment :picture1
            t.attachment :picture2
            t.attachment :picture3
            t.attachment :picture4
            t.attachment :picture5
            t.attachment :picture6

            t.attachment :issue1_picture
            t.attachment :issue2_picture
        end
    end

    def self.down
        drop_attached_file :reviews, :picture1
        drop_attached_file :reviews, :picture2
        drop_attached_file :reviews, :picture3
        drop_attached_file :reviews, :picture4
        drop_attached_file :reviews, :picture5
        drop_attached_file :reviews, :picture6

        drop_attached_file :reviews, :issue1_picture
        drop_attached_file :reviews, :issue2_picture
    end
end