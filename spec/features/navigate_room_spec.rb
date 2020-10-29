require "rails_helper"

RSpec.describe "Navigating rooms" do
	it "Allows navigation between the index page and the show page" do
		room = Room.create

		visit rooms_url
		click_link "Room #1"

		expect(current_path).to eq(room_path(room))
	end
end