class CatsController < ApplicationController
	def index
		@cats = Cat.all
	end

	def new
		@cat = Cat.new
	end

	def create
		Cat.create(cat_params)
		redirect_to root_path
	end

	private

	def cat_params
		params.require(:cat).permit(:name, :description, :birthday)
	end


end
