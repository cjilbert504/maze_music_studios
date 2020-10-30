module RoomsHelper
	def room_occupancy_status(room)
		room.occupancy_status.capitalize
	end

	def room_number_format(room)
		"Room ##{room.id}"
	end
end
