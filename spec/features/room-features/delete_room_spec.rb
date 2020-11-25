# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Deleting a room' do
  it 'destroys the room and shows the index page without the deleted room' do
    room = Room.create(studio_number: 1)

    visit room_url(room)
    click_link 'Delete Room'

    expect(current_path).to eq(rooms_path)
    expect(page).not_to have_text('Room #1')
  end
end
