class Employee < ApplicationRecord
	mount_uploader :image, ImageUploader
	validates :emp_name, presence: true 
	validates :emp_email, :presence => true, :uniqueness => true
end
