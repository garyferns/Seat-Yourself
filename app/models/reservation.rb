class Reservation < ActiveRecord::Base
  
  RESO_TIMES = ['18:00', '18:30', '19:00', '19:30', '20:00', '20:30', '21:00', '21:30', '22:00', '22:30']

  belongs_to :user
  belongs_to :restaurant

  validates :party_size, presence: true 
  
end
