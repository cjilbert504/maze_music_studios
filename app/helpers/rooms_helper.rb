module RoomsHelper
	def room_occupancy_status(room)
		room.occupied ? "Occupied" : "Vacant"
	end
end
