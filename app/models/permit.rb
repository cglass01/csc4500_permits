class Permit < ApplicationRecord
	belongs_to	:user
	has_one	:vehicle
end
