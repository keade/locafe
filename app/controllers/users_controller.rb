class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		@location = @user.locations.paginate(:page => params[:page])
	end

end
