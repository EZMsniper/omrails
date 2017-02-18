class AdminAuthorization < ActiveAdmin::AuthorizationAdapter

	def authoized?(action, subject = nil)
		user && user.admin?
	end

end