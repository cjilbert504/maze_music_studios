# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Navigating rooms' do

  before do
    @room = Room.create(studio_number: 1)
  end

  it 'allows navigation between the index page and the show page' do
    visit rooms_url
    click_link 'Room #1'

    expect(current_path).to eq(room_path(@room))
  end

  it 'allows navigation from the show page to the index page' do
    visit room_url(@room)
    click_link 'Back To All Rooms'

    expect(current_path).to eq(rooms_path)
  end

  it "allows the ability to cancel editing a room and returns to current room's show page" do
    visit edit_room_url(@room)
    click_link 'Cancel Editing'

    expect(current_path).to eq(room_path(@room))
  end
end
