require 'rails_helper'

RSpec.describe "Home Page" do
	it "is the root path and welcomes visitors" do
		visit root_path

		expect(current_path).to eq(root_path)
		expect(page).to have_text("Welcome to The Maze Rehearsal Studios")
	end
end