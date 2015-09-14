class Reservation < ActiveRecord::Base
  
  RESO_TIMES = ['18:00', '18:30', '19:00', '19:30', '20:00', '20:30', '21:00', '21:30', '22:00', '22:30']

  belongs_to :user
  belongs_to :restaurant

  validates :party_size, presence: true 
  validate :capacity_exists

  # custom validation 
  def capacity_exists
  	existing_reservations = Reservation.where("restaurant_id = ? and reso_time > ? and reso_time < ?")
  	total_people = existing_reservatons.sum(:party_size)
  	restaurant_capacity = self.restaurant.capacity
  	if (self.party_size + total_people) > restaurant_capacity
		# errors.add(:party_size, "Capacity exceeded")
		errors[:base] << "Capacity exceeded"
	end  
  end 

end
