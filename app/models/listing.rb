class Listing < ActiveRecord::Base
	if Rails.env.developent?
	  has_attached_file :images,
	  validates_attachment_content_type :images, :content_type => /\Aimage\/.*\Z/
	else 
	  has_attached_file :images, :storage => :dropbox,
	    				:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	    				:styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "No_image_available.png",
	    				:path => ":style/:id_:filename" #This creates a folder with the style name first (medium / thumb) and then writes the file name with a unique ID
	  validates_attachment_content_type :images, :content_type => /\Aimage\/.*\Z/
	end
end
