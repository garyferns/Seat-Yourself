class Reservation < ActiveRecord::Base

  belongs_to :user
  belongs_to :restaurant

  validates :party_size, presence: true
  validate :capacity_exists

 def capacity_exists
  	existing_reservations = Reservation.where("restaurant_id = ? and dinner_time = ? ", restaurant.id, dinner_time )
  	total_people = existing_reservations.sum(:party_size)
  	restaurant_capacity = self.restaurant.capacity
  	if (self.party_size + total_people) > restaurant_capacity
		errors.add(:party_size, "Capacity exceeded")
		# errors[:base] << "Capacity exceeded"
	end
end



end
