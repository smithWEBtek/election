class AddressesController < ApplicationController

	def index
		@addresses = Address.first(500)
		render json: @addresses
	end
end
