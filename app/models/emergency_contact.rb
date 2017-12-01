class EmergencyContact < ApplicationRecord
	self.primary_key = :contact_id
	belongs_to	:user, optional: true
	belongs_to	:student, optional: true
	belongs_to	:faculty, optional: true
end
