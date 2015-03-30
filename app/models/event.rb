class Event < ActiveRecord::Base
  extend SimpleCalendar
    has_calendar
    has_attached_file :avatar
     # Validate content type
     validates_attachment_content_type :avatar, :content_type => /\Aimage/
     # Validate filename
     validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]
    has_attached_file :avatar, :styles => { :standard => "800x600>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
