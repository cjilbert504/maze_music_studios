# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Editing a room' do
  it 'updates the rooms details and then shows the updated details' do
    room = Room.create(studio_number: 1)

    visit room_url(room)
    click_link 'Edit Room'

    expect(current_path).to eq(edit_room_path(room))
    expect(page).to have_text('Editing: Room #1')

    expect(find_field('room_studio_number').value).to eq(room.studio_number.to_s)
    expect(find_field('room_occupancy_status').value).to eq(room.occupancy_status)
    expect(find_field('room_availability_status').value).to eq(room.availability_status)

    select '2', from: 'room_studio_number'
    select 'occupied', from: 'room_occupancy_status'
    select 'unavailable', from: 'room_availability_status'

    click_button 'Update Room'

    expect(current_path).to eq(room_path(room))
    expect(page).to have_text('Room #2')
    expect(page).to have_text('occupied')
    expect(page).to have_text('unavailable')
  end
end
