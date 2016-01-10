class HomeController < ApplicationController
  def index
  	if current_user.present?
  		redirect_to: dashboard_admin_path(1)
  	end
  end
end
