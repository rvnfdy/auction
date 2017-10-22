class ProductsController < ApplicationController
		def index
				@products = Product.all
		end

		def show
				@book = Product.find(params[:id])
		end

		def new
				@product = Product.new
		end

		def create
				product = Product.new(product_params)
				product.user_id = 1
				if product.save
						redirect_to products_path
				else
						render :new
				end
		end
		
		def edit
				product = product.find(product.id)
				if product.save
						redirect_to products_path
				end
		end
		private def product_params
				params.require(:product).permit(:name, :owner, :starting_price)
		end
end
