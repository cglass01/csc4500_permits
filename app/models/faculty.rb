class Faculty < ApplicationRecord
	belongs_to	:user
	has_many	:vehicles
	has_one	:emergency_contact
end
