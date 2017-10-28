class Student < ApplicationRecord
	self.primary_key = :student_auID
	belongs_to	:user
	has_one	:emergency_contact
	has_one	:vehicle
end
