class Passenger < ActiveRecord::Base
	has_many :tickets
  has_many :bookings, :through => :tickets
  has_many :flights, :through => :bookings

  validates :name, :email, presence: true
end
