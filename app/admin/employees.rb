ActiveAdmin.register Employee do
  actions :index, :edit, :update, :create, :destroy, :new, :show
  permit_params :emp_name, :emp_email, :mobile_number, :emp_country, :emp_state, :emp_city, :image
  form do |f|
    f.inputs do
      f.input :emp_name
      f.input :emp_email
      f.input :mobile_number
      f.input :emp_country, as: :select, collection: get_country, selected: employee.emp_country, prompt: '---select---'
      f.input :emp_state, as: :select, collection: get_state(employee), selected: employee.emp_state, prompt: '---select---'
      f.input :emp_city, as: :select, collection: get_city(employee), selected: employee.emp_city, prompt: '---select---'
      f.input :image 
    end
    f.actions
  end

  filter :emp_name
  filter :emp_email

  # method for get state by country 
  collection_action :get_state_by_country, method: [:get] do
    country = params[:country]
    states = CS.states(country)
    render json: states.map{|s| [s[0], s[1]]}
  end

  # method for get city by country 
  collection_action :get_cities, method: [:get] do
    country = params[:country]
    state = params[:state]
    cities = CS.cities(state, country)
    render json: cities
  end
end

