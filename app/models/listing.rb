class Listing < ActiveRecord::Base
  has_attached_file :images, :styles => { :medium => "700x>", :thumb => "100x100>" }, :default_url => "No_image_available.png"
  validates_attachment_content_type :images, :content_type => /\Aimage\/.*\Z/
end
