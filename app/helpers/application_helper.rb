module ApplicationHelper
	def get_country
		CS.countries.collect{|u| [u[1], u.join(',')]}
	end

	def get_state(emp)
		emp.emp_country ? CS.states(emp.emp_country.split(',')[0]).collect{|u| [u[1], u.join(',')]} : []
	end

	def get_city(emp)
		emp.emp_city ? CS.cities(emp.emp_state.split(',')[0], emp.emp_country.split(',')[0]) : []
	end
end
