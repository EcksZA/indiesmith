class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@store = Store.find(params[:store_id])
		@product = Product.find(params[:id])
	end

	def new
		@store = Store.find(params[:store_id])
		@product = Product.new
	end

	def create
		@store = Store.find(params[:store_id])
		@product = Product.new(product_params)
	end

	def edit
		@store = Store.find(params[:store_id])
		@product = Product.find(params[:id])
	end

	def update
		@store = Store.find(params[:store_id])
		@product = Product.find(params[:id])
		if @product.update(user_params)
			redirect_to store_product_path(@store, @product)
		else
			render 'edit'
		end
	end

	def destroy
		@store = Store.find(params[:store_id])
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to store_path(@store)
	end

private
	def product_params
		params.require(:product).permit(:name, :description. :price, :store_id)
	end
end