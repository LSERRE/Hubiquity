class Review < ActiveRecord::Base
  		attr_accessor :picture1 
  		attr_accessor :picture2
  		attr_accessor :picture3 
  		attr_accessor :picture4
  		attr_accessor :picture5
  		attr_accessor :picture6

  		attr_accessor :issue1_picture
  		attr_accessor :issue2_picture

  		has_attached_file :picture1, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "missing_picture.png"
	  	has_attached_file :picture2, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "missing_picture.png"
	  	has_attached_file :picture3, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "missing_picture.png"
	  	has_attached_file :picture4, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "missing_picture.png"
	  	has_attached_file :picture5, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "missing_picture.png"
	  	has_attached_file :picture6, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "missing_picture.png"
	  	has_attached_file :issue1_picture, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "missing_picture.png"
	  	has_attached_file :issue2_picture, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "missing_picture.png"

  		validates_attachment_content_type :picture1, :content_type => /\Aimage\/.*\Z/
  		validates_attachment_content_type :picture2, :content_type => /\Aimage\/.*\Z/
  		validates_attachment_content_type :picture3, :content_type => /\Aimage\/.*\Z/
  		validates_attachment_content_type :picture4, :content_type => /\Aimage\/.*\Z/
  		validates_attachment_content_type :picture5, :content_type => /\Aimage\/.*\Z/
  		validates_attachment_content_type :picture6, :content_type => /\Aimage\/.*\Z/

  		validates_attachment_content_type :issue1_picture, :content_type => /\Aimage\/.*\Z/
  		validates_attachment_content_type :issue2_picture, :content_type => /\Aimage\/.*\Z/

      belongs_to :visiter, :foreign_key => 'visiter_id', :class_name => "Visiter"
end