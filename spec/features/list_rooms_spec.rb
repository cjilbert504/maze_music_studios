require "rails_helper"

RSpec.describe "Visiting the list of rooms" do
	it "shows the rooms" do
		room1 = Room.create
		room2 = Room.create
		room3 = Room.create

		visit rooms_url

		expect(page).to have_text("3 Rooms")
	end
end