module ApplicationHelper
	def get_country
		CS.countries.collect{|u| [u[1], u[0]]}
	end
end
