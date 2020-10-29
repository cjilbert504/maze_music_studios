require "rails_helper"

RSpec.describe "Viewing an individual room" do
	it "Shows the room's details" do
		room = Room.create

		visit room_url(room)

		expect(page).to have_text("Room #1")
		expect(page).to have_text("Vacant")
		expect(page).to have_text("Available")
	end
end