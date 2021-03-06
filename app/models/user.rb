class User < ActiveRecord::Base
	has_many :reservations
	has_many :restaurants, through: :reservations  

	has_secure_password

	has_many :owned_restaurants, class_name: "Restaurant", foreign_key: "owner_id"

	validates :first_name, presence: true
	validates :last_name, presence: true
end
