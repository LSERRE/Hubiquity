class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "default.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	has_many :visit
	has_many :missions, :foreign_key => 'visit_id', :class_name => "User", through: :visiter

	def has_requested_mission( visit_id )
		Visiter.where(user_id: self.id, visit_id: visit_id).present?
	end
end
