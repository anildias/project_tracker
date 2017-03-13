class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def current_user
  	@current_user ||= super && User.includes(projects: [:owner, :members]).find(@current_user.id)
	end
end
