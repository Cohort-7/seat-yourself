class Customer < ActiveRecord::Base

	has_secure_password
	
	has_many :reviews
	has_many :reservations
	has_many :restaurants, :through => :reviews
	has_many :owned_restaurants, :class_name => "Restaurant", :foreign_key => "owner_id"

	validates :name, :email, :presence => true
	validates :email, :uniqueness => true
end
