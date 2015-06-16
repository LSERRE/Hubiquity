class Visit < ActiveRecord::Base
	belongs_to :user
	validates :adress, presence: true
	validates :zipcode, presence: true
	validates :city, presence: true
	validates :country, presence: true
	validates :surface, presence: true
	validates :agentName, presence: true
	validates :visitDate1, presence: true
	validates :visitTime1, presence: true
	validates :telephone, presence:true
end
