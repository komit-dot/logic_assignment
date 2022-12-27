class Employee < ApplicationRecord
	validates :emp_name, presence: true 
end
