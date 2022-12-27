ActiveAdmin.register Employee do

  actions :index, :edit, :update, :create, :destroy, :new, :show
  permit_params :emp_name, :emp_email, :mobile_number, :emp_country, :emp_state, :emp_city
  form do |f|
    f.inputs do
      f.input :emp_name
      f.input :emp_email
      f.input :mobile_number
      f.input :emp_country, as: :select, collection: get_country, prompt: 'select'
      f.input :emp_state, as: :select, collection: [], prompt: 'select'
      f.input :emp_city, as: :select, collection: [], prompt: 'select'
    end
    f.actions
  end

    filter :emp_name
    filter :emp_email

     #controller { actions :all, except: [:destroy] }
  collection_action :get_state_by_country, method: [:get] do
    country = params[:article_country]
    states = CS.states(country)
    render :json => states.map{|s| [s[0], s[1]]}
  end

  collection_action :get_cities, method: [:get] do
    country = params[:article_country]
    states = params[:article_states]
    states = CS.states(country)
    render :json => states.map{|s| [s[0], s[1]]}
  end
end

