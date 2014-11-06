class SessionsController < ApplicationController
	def new
	end

	def create
		store = Store.find_by_email(params[:email])
		if store && store.authenticate(params[:password])
			session[:store_id] = store.id
			redirect_to root_url
		else
			render "new"
		end
	end

	def destroy
		session[:store_id] = nil
		redirect_to root_url
	end
end