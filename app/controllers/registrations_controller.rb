class RegistrationsController < Devise::RegistrationsController

	def create
		if verify_recaptcha
			super
		else
			build_resource
			clean_up_passwords(resource)
			flash[:alert] = "Error in the reCaptcha code. Please try again"
			render_with_scope :new
		end
	end
end