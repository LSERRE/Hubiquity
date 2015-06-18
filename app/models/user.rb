class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

  	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "missing.png"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	has_many :visit
	has_many :missions, :foreign_key => 'visit_id', :class_name => "User", through: :visiter

	before_create :set_default_values

	def has_requested_mission( visit_id )
		Visiter.where(user_id: self.id, visit_id: visit_id).present?
	end

	def set_default_values
		self.level = 1
		self.rating = 1
		self.account_balance = 0
		self.default_city = ""
		self.alert_zone = 10
	end


end
