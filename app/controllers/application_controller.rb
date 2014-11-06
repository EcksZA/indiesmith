class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 private
 	def current_store
 		@current_store ||= Store.find(session[:store_id]) if session[:store_id]
 	end

 	def authorize
 		redirect_to login_url if current_store.nil?
 	end

 	helper_method :current_store
end
