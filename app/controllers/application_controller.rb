class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action -> { request.variant = :ios_app if request.user_agent == 'iOS App 1.0' }
end
