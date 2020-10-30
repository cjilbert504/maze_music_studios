require "rails_helper"

RSpec.describe "Visiting the list of rooms" do
	it "shows the rooms" do
		room1 = Room.create
		room2 = Room.create
		room3 = Room.create

		visit rooms_url

		expect(page).to have_text("3 Rooms at The Maze Music Studios")
		expect(page).to have_text("Room #1")
		expect(page).to have_text("Status: available")
		expect(page).to have_text("Room #2")
		expect(page).to have_text("Status: available")
		expect(page).to have_text("Room #3")
		expect(page).to have_text("Status: available")
	end
end