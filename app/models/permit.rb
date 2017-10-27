class Permit < ApplicationRecord
	self.primary_key = :permit_number
	belongs_to	:user
	has_one	:vehicle
end
