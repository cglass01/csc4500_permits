class Vehicle < ApplicationRecord
	belongs_to	:user
	belongs_to	:student
	belongs_to	:faculty
	belongs_to	:permit
end
