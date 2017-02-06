class AdminAuthorization < ActiveAdmin::AuthorizationAdapter

	def authoized?(action, subject = nil)
		user.admin?
	end

end