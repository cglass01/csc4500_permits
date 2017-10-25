class Student < ApplicationRecord
	belongs_to	:user
	has_one	:emergency_contact
	has_one	:vehicle
end
