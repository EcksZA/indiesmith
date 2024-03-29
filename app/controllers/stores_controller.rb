class StoresController < ApplicationController
	def index
		@stores = Store.all
	end

	def show
		@store = Store.find(params[:id])
	end

	def new
		@store = Store.new
	end

	def create
		@store = Store.new(store_params)
		if @store.save
			session[:store_id] = @store.id
			redirect_to store_path(@store)
		else
			render 'new'
		end
	end

	def edit
		@store = Store.find(params[:id])
	end

	def update
		@store = Store.find(params[:id])
		if @store.update(store_params)
			redirect_to store_path(@store)
		else
			render 'edit'
		end
	end

	def destroy
		@store = Store.find(params[:id])
		@store.destroy
		redirect_to new_store_path
	end

private
	def store_params
		params.require(:store).permit(:name, :country, :contact_email, :phone, :email, :password, :password_confirmation)
	end
end