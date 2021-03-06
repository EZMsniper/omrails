ActiveAdmin.register User do

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

	permit_params :email, :admin
#

	form do |f|
		f.semantic_errors
		f.inputs do
			f.input :email
			f.input :password
			f.input :admin
		end
		f.actions
	end

	index do
		column :user
		column :email
		column :admin
		column :last_sign_in_at
		column :current_sign_in_ip
		column :created_at
		actions
	end

end
