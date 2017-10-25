class EmergencyContact < ApplicationRecord
	belongs_to	:user
	belongs_to	:student
	belongs_to	:faculty
end
