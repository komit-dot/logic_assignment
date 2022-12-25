ActiveAdmin.register Employee do

  # See permitted parameters documentation:
  actions :index, :edit, :update, :create, :destroy

  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :emp_name, :emp_email, :mobile_number, :emp_country, :emp_state, :emp_city

  #menu parent: ["Admin", "Blog"]
  #
  # or
  #
  # permit_params do
  #   permitted = [:emp_name, :emp_email, :mobile_number, :emp_country, :emp_state, :emp_city]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

   filter :country, as: :country
   filter :state, as: :state
  
end
