ActiveAdmin.register Contact do

 permit_params :first_name, :last_name, :company_id, :source_id, :bio, :linkedin, :twitter, :title, :email, :phone, :image, :notes, :pilots

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
