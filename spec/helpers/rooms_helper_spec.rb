require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the RoomsHelper. For example:
#
# describe RoomsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end

RSpec.describe RoomsHelper, type: :helper do
	it "has a method to format a room number based on the room's id" do
		room = Room.create

		expect(room_number_format(room)).to eq("Room #1")
		expect(room_number_format(room)).not_to eq("Room 1")
	end

	it "has a method that returns 'Occupied' if the room is occupied" do
		room = Room.create(occupied: true)

		expect(room_occupancy_status(room)).to eq("Occupied")
	end

	it "has a method that returns 'Vacant' if the room is not occupied" do
		room = Room.create

		expect(room_occupancy_status(room)).to eq("Vacant")
	end
end
