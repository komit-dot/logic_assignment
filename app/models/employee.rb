class Employee < ApplicationRecord
	mount_uploader :image, ImageUploader
	validates :emp_name, presence: true 
end
