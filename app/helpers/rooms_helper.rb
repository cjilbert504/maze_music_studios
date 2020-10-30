module RoomsHelper
	def room_occupancy_status(room)
		room.occupied ? "Occupied" : "Vacant"
	end

	def room_number_format(room)
		"Room ##{room.id}"
	end
end
