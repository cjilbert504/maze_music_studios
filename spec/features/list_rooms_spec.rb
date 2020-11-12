# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Visiting the list of rooms' do
  it 'shows the rooms' do
    room1 = Room.create(studio_number: 1)
    room2 = Room.create(studio_number: 2)
    room3 = Room.create(studio_number: 3)

    visit rooms_url

    expect(page).to have_text('Welcome To The Maze Music Studios')
    expect(page).to have_text('Room #1')
    expect(page).to have_text('Room #2')
    expect(page).to have_text('Room #3')
  end
end
