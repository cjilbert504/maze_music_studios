class RoomsController < ApplicationController

	before_action :set_room, only: [:show, :edit, :update, :destroy]

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

	def destroy
		@room.destroy
		redirect_to rooms_url
	end

	private

	def room_params
		params.require(:room).permit(:studio_number, :occupancy_status, :availability_status)
	end

	def set_room
		@room = Room.find(params[:id])
	end
end
