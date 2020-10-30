class RoomsController < ApplicationController
	def index
		@rooms = Room.all
	end

	def show
		@room = Room.find(params[:id])
	end

	def edit
		@room = Room.find(params[:id])
	end

	def update
		@room = Room.find(params[:id])
		@room.update(room_params)
		redirect_to room_url(@room)
	end

	private

	def room_params
		params.require(:room).permit(:occupancy_status, :availability_status)
	end
end
