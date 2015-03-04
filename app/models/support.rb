class Support
  
  include ActiveModel::Model

  attr_accessor :name, :email, :phone, :address, :body, :help
  validates :name, presence: true
  validates :email, presence: true
end