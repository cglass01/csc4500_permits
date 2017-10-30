class Student < ApplicationRecord
	self.primary_key = :student_id
	belongs_to	:user
	belongs_to	:emergency_contact, class_name: 'User', optional: true
	belongs_to	:vehicle, class_name: 'User', optional: true
end
