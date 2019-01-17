class VotersController < ApplicationController
before_action :set_voter, only: [:show, :update, :destroy]

	def index
		@voters = Voter.all
		render json: @voters
	end

	def show
		render json: @voter
	end

	def create
		@voter = Voter.new(voter_params)
		if @voter.save
			render json: @voter
		else
			render json: {message: "Voter NOT created.", params_received: params}
		end
	end

	def update
		if @voter.update(voter_params)
			render json: @voter
		else
			render json: {message: "Voter NOT updated.", params_received: params}
		end
	end

	def destroy
		@voter.delete
		render json: {message: "Voter deleted.", params_received: params}
	end

	private
		def set_voter
			@voter = Voter.find(params[:id])
		end

		def voter_params
			require(:voter).permit(:first_name, :last_name, :email, :gender, :party, :registered)
		end
end
