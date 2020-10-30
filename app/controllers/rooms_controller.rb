class RoomsController < ApplicationController

	before_action :set_room, only: [:show, :edit, :update]
	
	def index
		@rooms = Room.all
	end

	def show
	end

	def edit
	end

	def update
		@room.update(room_params)
		redirect_to room_url(@room)
	end

	private

	def room_params
		params.require(:room).permit(:occupancy_status, :availability_status)
	end

	def set_room
		@room = Room.find(params[:id])
	end
end
