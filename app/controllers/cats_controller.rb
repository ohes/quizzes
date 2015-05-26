class CatsController < ApplicationController
	def index
	end

	def new
		@cat = Cat.new
	end

end
