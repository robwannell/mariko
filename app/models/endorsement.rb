class Endorsement < ActiveRecord::Base
  belongs_to :user
  
  validates :firstname, presence: true, unless: "organization?"
  validates :lastname, presence: true, unless: "organization?"
  
  default_scope  {order 'rank ASC', 'lastname ASC', 'organization ASC'}
  
  
end
