class Restaurant < ActiveRecord::Base
  belongs_to :owner, class_name: "User"

  has_many :reservations
  has_many :users, through: :reservations

  validates :name, presence: true
  validates :capacity, presence: true
  validates :address, presence: true
  validates :neighbourhood, presence: true
end
