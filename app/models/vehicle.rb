class Vehicle < ApplicationRecord
	self.primary_key = :vehicle_id
	belongs_to	:user
	belongs_to	:student
	belongs_to	:faculty
	belongs_to	:permit
end
