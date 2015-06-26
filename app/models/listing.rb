class Listing < ActiveRecord::Base
	if Rails.env.development?
	  has_attached_file :images, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "No_image_available.png"
	else 
	  has_attached_file :images, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "No_image_available.png",
	  					:storage => :dropbox,
	    				:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	    				#This creates a folder with the style name first (medium / thumb) and then writes the file name with a unique ID
	    				:path => ":style/:id_:filename"	    				
	end
	validates_attachment_content_type :images, :content_type => /\Aimage\/.*\Z/
	validates_attachment_presence :images
	validates :name, :description, :price, presence: true
	validates :price, numericality: {greater_than: 0}
end
