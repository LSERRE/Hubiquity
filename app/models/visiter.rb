class Visiter < ActiveRecord::Base
	belongs_to :visit, :class_name => :Visit,:foreign_key => "visit_id"
    belongs_to :user, :class_name => :User,:foreign_key => "user_id"

    validates :visit_id, presence: true
    validates :user_id, presence: true
end
