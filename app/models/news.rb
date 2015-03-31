class News < ActiveRecord::Base
  has_attached_file :avatar
   # Validate content type
   validates_attachment_content_type :avatar, :content_type => /\Aimage/
   # Validate filename
   validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]
  has_attached_file :avatar, :styles => { :standard => "820x600>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  
   default_scope  {order 'created_at DESC'}
   
   extend FriendlyId
   friendly_id :title, use: :slugged
   
   
end
