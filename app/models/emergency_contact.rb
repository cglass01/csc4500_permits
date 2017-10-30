class EmergencyContact < ApplicationRecord
	self.primary_key = :contact_id
	belongs_to	:user
	belongs_to	:student
	belongs_to	:faculty
end
