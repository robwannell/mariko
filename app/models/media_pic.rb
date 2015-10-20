class MediaPic < ActiveRecord::Base
  has_attached_file :image
   # Validate content type
   validates_attachment_content_type :image, :content_type => /\Aimage/
   # Validate filename
   validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /JPE?G\Z/]
  has_attached_file :image, :styles => { :standard => "820x600>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  
   default_scope  {order 'rank ASC'}
end
