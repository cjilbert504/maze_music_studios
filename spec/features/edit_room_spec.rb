require "rails_helper"

RSpec.describe "Editing a room" do
	it "updates the rooms details and then shows the updated details" do
		room = Room.create

		visit room_url(room)
		click_link "Edit Room"

		expect(current_path).to eq(edit_room_path(room))
		expect(page).to have_text("Editing: Room #1")

		
	end
end